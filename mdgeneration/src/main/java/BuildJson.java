import java.io.IOException;
import java.nio.file.Path;
import java.util.logging.*;

public class BuildJson {
    public static final Logger logger = Logger.getLogger("mdgeneration");

    public static void main(String[] args) throws IOException {
        var startTime = System.currentTimeMillis();

        System.setProperty("java.util.logging.config.file", "C:\\Users\\tsuyargu\\IdeaProjects\\mdgeneration\\logging.properties");
        logger.setLevel(Level.INFO);
        logger.setUseParentHandlers(false);
        var handler = new ConsoleHandler();
        handler.setLevel(Level.FINE);
        logger.addHandler(handler);
//        LogManager.getLogManager().updateConfiguration(key -> ((before, after) -> after == null ? before : after));

        var config = ReadConfig.getInstance();
        var parsedDdl = new PreparingDdl(Path.of(config.getProperty("ddlFile.path")),
                config.getProperty("ddlStatementsFor.schema"),
                config.getProperty("ddlStatementsFor.table"));

        if (!(config.getProperty("ddlContent.parsingTokens")==null)) {
            parsedDdl.parseDdlSql(config.getProperty("ddlContent.parsingTokens"));
        }

        logger.fine(config.getProperty("jsonHeader.namespace"));
        logger.fine(config.getProperty("jsonHeader.name"));
        logger.log(Level.FINE, "DdlStatements = " + parsedDdl.getDdlStatements());

        try {
            JsonWrapper.start(new ParsingDdl(parsedDdl.getDdlStatements()).ddlToPojo(), config);
        }
        catch (NullPointerException e) {
            logger.log(Level.SEVERE, "Likely ddlToPojo failed to parse ddl Statements. Pls check input");
            e.printStackTrace();
        }
        logger.info("Code run time: " + (System.currentTimeMillis() - startTime) + " ms." );
    }
}
