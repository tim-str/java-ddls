import java.util.List;

public class Metadata {
    private final String name;
    private final String namespace;
    private final String sourceSystem;
    private final boolean mutable;
    private final String owningGroupId;
    private final String loadType;
    private final String rawTableName;
    private final String overwriteConformedPartitionKey;
    private final String delimiter;
    private final String rawDelimiter;
    private final String skipheaderrows;
    private final List<DataBean> columns;

    public Metadata(String name, String namespace, String sourceSystem, boolean mutable, String owningGroupId,
                    String loadType, String rawTableName, String overwriteConformedPartitionKey, String delimiter,
                    String rawDelimiter, String skipheaderrows, List<DataBean> columns) {
        this.name = name;
        this.namespace = namespace;
        this.sourceSystem = sourceSystem;
        this.mutable = mutable;
        this.owningGroupId = owningGroupId;
        this.loadType = loadType;
        this.rawTableName = rawTableName;
        this.overwriteConformedPartitionKey = overwriteConformedPartitionKey;
        this.delimiter = delimiter;
        this.rawDelimiter = rawDelimiter;
        this.skipheaderrows = skipheaderrows;
        this.columns = columns;
    }

    public String getName() {
        return name;
    }

    public String getNamespace() {
        return namespace;
    }

    public String getSourceSystem() {
        return sourceSystem;
    }

    public boolean isMutable() {
        return mutable;
    }

    public String getOwningGroupId() {
        return owningGroupId;
    }

    public String getLoadType() {
        return loadType;
    }

    public String getRawTableName() {
        return rawTableName;
    }

    public String getOverwriteConformedPartitionKey() {
        return overwriteConformedPartitionKey;
    }

    public String getDelimiter() {
        return delimiter;
    }

    public String getRawDelimiter() {
        return rawDelimiter;
    }

    public String getSkipheaderrows() {
        return skipheaderrows;
    }

    public List<DataBean> getColumns() {
        return columns;
    }

    @Override
    public String toString() {
        return "Metadata{" +
                "name='" + name + '\'' +
                ", namespace='" + namespace + '\'' +
                ", sourceSystem='" + sourceSystem + '\'' +
                ", mutable=" + mutable +
                ", owningGroupId='" + owningGroupId + '\'' +
                ", loadType='" + loadType + '\'' +
                ", rawTableName='" + rawTableName + '\'' +
                ", overwriteConformedPartitionKey='" + overwriteConformedPartitionKey + '\'' +
                ", delimiter=" + delimiter +
                ", rawDelimiter=" + rawDelimiter +
                ", skipheaderrows=" + skipheaderrows + "}";
    }
}

enum LoadType {FULL, DELTA};
