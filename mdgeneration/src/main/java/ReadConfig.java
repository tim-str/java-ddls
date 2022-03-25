import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;

public class ReadConfig {
    private static Properties config;

    private ReadConfig() {

        try(FileInputStream is = new FileInputStream("C:\\Users\\tsuyargu\\IdeaProjects\\mdgeneration\\src\\main\\resources\\config.properties")) {
            config = new Properties();
            config.load(is);
        }
        catch (FileNotFoundException e) {
            BuildJson.logger.log(Level.SEVERE, "Error whilst accessing config file", e);
            e.printStackTrace();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static Properties getInstance() {
        if (config == null) {
            new ReadConfig();
        }
        return config;
    }
}