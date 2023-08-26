import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

// projenin çalışması için java 1.8 i kullanıyoruz.


@RunWith(Karate.class) // cucumberde cucumber.class yazıyorduk burda karate.class.
@KarateOptions (

        tags = "@wip"

               )

public class FeaturesRunner {


}
