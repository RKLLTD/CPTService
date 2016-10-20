package CPTService;

import java.util.concurrent.atomic.AtomicLong;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();
    protected static Logger logger = LoggerFactory.getLogger(GreetingController.class);
    
	@Value("${spring.datasource.username}")
	private String DB_USERNAME;
	
	
    @RequestMapping(value="/greeting", method = RequestMethod.GET)
    public Greeting greeting(@RequestParam(value="name", defaultValue="World") String name) {
    	logger.info("DB_USERNAME: " + DB_USERNAME);
    	name = name == null ? DB_USERNAME : name;
        return new Greeting(counter.incrementAndGet(), String.format(template, name));
    }
}
