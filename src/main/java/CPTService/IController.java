package CPTService;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import CPTService.model.Service;

public interface IController<T> {

	T get(Integer id) throws Exception;

	List<T> list();

}