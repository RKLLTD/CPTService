package CPTService;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;

import CPTService.model.Service;

public interface IServiceService<Service> extends IController<Service>{
	public Service getByCode(@PathVariable(value="code") Integer id) throws Exception;
	public List<Service> filterBySubset(Integer id);
}