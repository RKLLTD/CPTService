package CPTService.dao;

import java.util.List;

public interface IDao<T> {

	public T get(int id) throws Exception;
	
	public List<T> list();
}
