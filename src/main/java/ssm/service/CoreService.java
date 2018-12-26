package ssm.service;

import java.util.List;

public interface CoreService<T> {

	public int create(T t);
	
	public int modify(T t);
	
	public int remove(int id);
	
	public T getOne(int id);
	
	public List<T> getList(T t);
}
