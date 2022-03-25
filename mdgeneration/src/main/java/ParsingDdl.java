import io.debezium.relational.Table;
import io.debezium.relational.Tables;
import io.debezium.relational.ddl.DdlParser;
import io.debezium.relational.ddl.DdlParserSql2003;
import java.math.BigInteger;
import java.util.*;
import java.util.logging.Level;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class ParsingDdl {
    private final String ddlStatement;
    private final DdlParser ddlParser;

    public ParsingDdl(String ddlStatement) {
        Objects.requireNonNull(ddlStatement, "Can't call 'ParsingDdl' constructor with null argument.");
        this.ddlStatement = ddlStatement;
        this.ddlParser =  new DdlParserSql2003();
    }

    public List<DataBean> ddlToPojo() {
        var tables = new Tables();
        System.out.println("The ddlStatement to parse: " + this.ddlStatement);
        this.ddlParser.parse(this.ddlStatement, tables);
        if(tables.size()>1 || tables.size()==0) {
            BuildJson.logger.log(Level.SEVERE, "UnsupportedOperationException.ProcessingConditionNotMet -> only one table structure can be parsed at a time.");
            throw new UnsupportedOperationException("Parsing more than 1 table from DDL is not supported.");
        }

//        parseDdl(tables.forTable(tables.tableIds().iterator().next()));
        if(tables.tableIds().iterator().hasNext())
            return parseDdl(tables.forTable(tables.tableIds().iterator().next()));
            else return null;   // null reference to be handled by caller
    }

    private List<DataBean> parseDdl(Table table) {
        System.out.println("Table name= " + table.id() + "\n" +
                "Number of table columns= " + table.columns().size() + "\n" +
                "Primary keys identified= " + table.primaryKeyColumnNames());

        LinkedList<DataBean> tableFields = Stream
                .iterate(BigInteger.ZERO, n -> n.compareTo(BigInteger.valueOf(table.columns().size())) < 0, n -> n.add(BigInteger.ONE))
                .map(e -> table.columns().get((e.intValue())))
                .map(e -> new DataBean(e.name(), e.typeName(), e.length(), e.isOptional(), false, e.position(),
                        Optional.of(0), e.scale()))
                .collect(Collectors.toCollection(LinkedList::new));

        table.primaryKeyColumnNames().forEach(e -> {
            for(DataBean bean : tableFields) if (bean.getName().equals(e)) bean.setNk(true);
            });

//        var tempSet = new HashSet<String>();
//        tableFields.forEach(e -> tempSet.add(e.getType()));
//        tempSet.stream().forEach(System.out::println);
        System.out.println("Number of elements of type Column: " + tableFields.size());
        tableFields.stream().limit(10).forEach(e -> BuildJson.logger.fine(e.toString()));
        return tableFields;
    }

    public String getDdlStatement() {
        return ddlStatement;
    }

    public DdlParser getDdlParser() {
        return ddlParser;
    }
}