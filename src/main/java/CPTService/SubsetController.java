package CPTService;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import CPTService.dao.SubsetDao;
import CPTService.model.Subset;

@RestController
public class SubsetController {
	
	@Autowired
	protected SubsetDao subsetDao;
	
    protected static Logger logger = LoggerFactory.getLogger(GreetingController.class);
	
    @RequestMapping(value="/subset/{id}", method = RequestMethod.GET)
    public Subset subset(@PathVariable(value="id") Integer id) throws Exception{
    	
    	Subset subset = subsetDao.get(id);
    	return subset;
    }


    @RequestMapping(value="/subset", method = RequestMethod.GET)
    public List<Subset> subset() {
    	List<Subset> subsets = subsetDao.list();
    	return subsets;
    }

}
