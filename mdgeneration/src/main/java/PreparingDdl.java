import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PreparingDdl {

    private final String tableName;
    private final String schemaName;
    private final Path ddlSqlLocation;
    private Optional<String> ddlStatements;
    private StringBuilder rawDdlStatements;

    public PreparingDdl(Path ddlSqlLocation, String schemaName, String tableName) {
        this.tableName = tableName;
        this.schemaName = schemaName;
        this.ddlSqlLocation = ddlSqlLocation;
        this.ddlStatements = Optional.empty();
        this.rawDdlStatements = new StringBuilder();
    }

    private List<String> readDdlSql() {
        List<String> lines = new LinkedList<>();

        try {
            lines = Files.readAllLines(this.ddlSqlLocation);
        } catch (IOException e) {
            BuildJson.logger.log(Level.SEVERE, "Error accessing file with DDL statements.", e);
        }
        return lines;
    }

    public void parseDdlSql(String ddlTokens) {
        var lines = readDdlSql();
        List<String> tokenList = List.of(ddlTokens.split(","));

        for (String e : tokenList) {
            while(true) {
             if(tokenBasedMatcher(e, lines)) break;
            }
        }

// TODO: Build the regex pattern out of passed parameters
//        createTable.append("^(CREATE TABLE casemanager.\")").append(this.tableName).append("(.)*$");
//        Pattern createStatement = Pattern.compile(createTable.toString());
//        Pattern endStatement = Pattern.compile("(.)*;$");
// TODO: extract the token-based matching code into a method & have it accept generic tokens.
// TODO: Preferably, fetched SQL statements to be separated by a space/LF char.
// TODO: Checking the String of tokens on "null"

        var schemaPrefix = getSchemaName() + ".";
        var ddlStatementPrepared =
                this.rawDdlStatements.toString().replace("\"", "")
                        .replace(schemaPrefix, "")
                        .replaceAll("\\s{2,}(?!ADD\\sCONSTRAINT)","")
                        .replaceAll("(?<=ALTER TABLE)\\sONLY","");

        this.ddlStatements = Optional.ofNullable(ddlStatementPrepared);
    }

    private boolean tokenBasedMatcher(String token, List<String> lines) {
        var bareTokenPattern = new StringBuilder();
        var ddlFetched = new StringBuilder();
        Pattern endStatement = Pattern.compile("(.)*;$");
        bareTokenPattern.append("^(").append(token).append("\\s+").append(getSchemaName()).append(".")
                .append("\")").append(this.tableName).append("\"").append("(.)*$");
        Pattern compiledTokenPattern = Pattern.compile(bareTokenPattern.toString());

        boolean isForPushIn = false;
        for (String e : lines) {
            Matcher tokenPatternMatcher = compiledTokenPattern.matcher(e);
            Matcher endStatementMatcher = endStatement.matcher(e);

            if(tokenPatternMatcher.matches()) isForPushIn = true;
            if(endStatementMatcher.matches() && isForPushIn) {
                ddlFetched.append(e);
                isForPushIn = false;
            }
            if(isForPushIn) ddlFetched.append(e);
        }
        this.rawDdlStatements.append(ddlFetched);
        return ddlFetched.length() > 0;
    }

    public String getDdlStatements() {
        return ddlStatements.orElse("");
    }

    public String getTableName() {
        return tableName;
    }

    public String getSchemaName() {
        return schemaName;
    }

    public StringBuilder getRawDdlStatements() {
        return rawDdlStatements;
    }

}
