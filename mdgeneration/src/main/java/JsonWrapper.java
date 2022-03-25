import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Properties;
import java.util.logging.Logger;
import static com.google.gson.FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES;

public class JsonWrapper {
    private static final Logger logger = BuildJson.logger;
    private final List<DataBean> data;
    private final Properties config;

    private JsonWrapper(List<DataBean> data, Properties config) {
        this.data = data;
        this.config = config;
        logger.info("Processing DataBeans to create Datalake metadata json...");
        serializeToJson();
    }

    public static void start(List<DataBean> data, Properties config) {
        new JsonWrapper(data, config);
    }

    private void serializeToJson() {
        LoadType loadType = LoadType.FULL.toString().equals(config.getProperty("jsonHeader.loadtype").toUpperCase()) ||
                LoadType.DELTA.toString()
                    .equals(config.getProperty("jsonHeader.loadtype").toUpperCase()) ? LoadType.valueOf(config.getProperty("jsonHeader.loadtype")) : null;
        if(loadType==null) throw new UnsupportedOperationException("Ingestion mode unrecognized.");

        var metadata = new Metadata(
                config.getProperty("jsonHeader.name"), config.getProperty("jsonHeader.namespace"),
                config.getProperty("jsonHeader.source_system"), config.getProperty("jsonHeader.mutable").equals("true"),
                config.getProperty("jsonHeader.owning_group_id"), loadType.toString(), config.getProperty("jsonHeader.raw_table_name"),
                config.getProperty("jsonHeader.overwrite_conformed_partition_key"), config.getProperty("jsonHeader.delimiter"),
                config.getProperty("jsonHeader.row_delimiter"), config.getProperty("jsonHeader.skipheaderrows"), data);

        Gson gson = new GsonBuilder()
                .registerTypeAdapter(Metadata.class, new MetadataAdapter())
                .setFieldNamingPolicy(LOWER_CASE_WITH_UNDERSCORES)
                .setPrettyPrinting()
                .create();

        var json = gson.toJson(metadata);
        var timeNow = LocalDateTime.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
        var jsonFileName = Paths.get(
                config.getProperty("jsonFile.path"), config.getProperty("jsonHeader.source_system").toLowerCase() +
                        "-" + config.getProperty("jsonHeader.namespace") + "-" + config.getProperty("jsonHeader.name") +
                        "-" + LocalDateTime.now().format(dtf) + ".json");

        try(var out = new PrintWriter(jsonFileName.toString(), StandardCharsets.UTF_8)) {
            out.println(json);
        } catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            logger.info("Please check the following json file is to be created:" + "\n" + jsonFileName);
        }
    }
}

class MetadataAdapter extends TypeAdapter<Metadata> {
    @Override
    public void write(JsonWriter out, Metadata content) throws IOException {
        out.beginObject();
        out.name("name").value(content.getName().toLowerCase());
        out.name("namespace").value(content.getNamespace());
        out.name("source_system").value(content.getSourceSystem());
        out.name("mutable").value(content.isMutable());
        out.name("owning_group_id").value(content.getOwningGroupId());
        out.name("loadtype").value(content.getLoadType());
        out.name("raw_table_name").value(content.getRawTableName());
        out.name("overwrite_conformed_partition_key").value(content.getOverwriteConformedPartitionKey());
        out.name("delimiter").value(content.getDelimiter());
        out.name("delimiter_row").value(content.getRawDelimiter());
        out.name("skipheaderrows").value(content.getSkipheaderrows());
        out.name("columns").beginArray();

        for(DataBean e : content.getColumns()) {
            out.beginObject();
            out.name("name").value(e.getName().toLowerCase());
            out.name("type").value(e.getType());
            out.name("length").value(e.getLength());
            out.name("nullable").value(e.isNullable());
            out.name("nk").value(e.isNk());
            out.name("ordinal_position").value(e.getOrdinal_position());
            out.name("description").value(e.getName().toLowerCase());
            out.name("precision").value(e.getPrecision().orElse(0));
            out.name("scale").value(e.getScale().orElse(0));
            out.endObject();
        }
        out.endArray();
        out.endObject();
    }

    @Override
    public Metadata read(JsonReader in) throws IOException {
        return null;
    }
}
