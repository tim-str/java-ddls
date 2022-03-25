import java.util.Map;
import java.util.Optional;

public class DataBean {
    public static final Map<String, String> typeMapper =
            Map.ofEntries(Map.entry("jsonb", "string"), Map.entry("bigint", "bigint"),
                    Map.entry("boolean", "boolean"), Map.entry("double precision", "decimal"),
                    Map.entry("character varying", "string"), Map.entry("integer", "integer"),
                    Map.entry("text", "string"));

    private String name;
    private String type;
    private int length;
    private boolean nullable;
    private boolean nk;
    private int ordinal_position;
    private Optional<Integer> precision;
    private Optional<Integer> scale;

    public DataBean(String name) {
        this.name = name;
    }

    public DataBean(String name, String type, int length, boolean nullable, boolean nk, int ordinal_position, Optional<Integer> precision, Optional<Integer> scale) {
        this(name);
        this.type = typeMapper.get(type.toLowerCase());
        this.length = this.type.equals("bigint") ? 19 : (this.type.equals("integer") ? 10 : length);
        this.nullable = nullable;
        this.nk = nk;
        this.ordinal_position = ordinal_position;
        this.precision = this.type.equals("decimal") ? Optional.of(15) : Optional.empty();
        this.scale = this.type.equals("decimal") ? Optional.of(6) : Optional.empty();
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public int getLength() {
        return length;
    }

    public boolean isNullable() {
        return nullable;
    }

    public boolean isNk() {
        return nk;
    }

    public int getOrdinal_position() {
        return ordinal_position;
    }

    public Optional<Integer> getPrecision() {
        return precision;
    }

    public Optional<Integer> getScale() {
        return scale;
    }

    public void setNk(boolean nk) {
        this.nk = nk;
    }

    @Override
    public String toString() {
        return "DataBean{" +
                "name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", length=" + length +
                ", nullable=" + nullable +
                ", nk=" + nk +
                ", ordinal_position=" + ordinal_position +
                ", precision=" + precision +
                ", scale=" + scale +
                '}';
    }
}
