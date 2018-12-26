package ssm.dao;

import java.util.List;

public interface CoreDao<T> {
	
	public int insert(T t);
	
	public int update(T t);
	
	public int delete(int id);
	
	public T getOne(int id);
	
	public List<T> getList(T t);

}
