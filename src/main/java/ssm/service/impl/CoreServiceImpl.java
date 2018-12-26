package ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import ssm.dao.CoreDao;
import ssm.service.CoreService;

public class CoreServiceImpl<T> implements CoreService<T>{
	
	@Autowired
	private CoreDao<T> coreDao;
	
	@Override
	public int create(T t) {
		// TODO Auto-generated method stub
		return coreDao.insert(t);
	}

	@Override
	public int modify(T t) {
		// TODO Auto-generated method stub
		return coreDao.update(t);
	}

	@Override
	public int remove(int id) {
		// TODO Auto-generated method stub
		return coreDao.delete(id);
	}

	@Override
	public T getOne(int id) {
		// TODO Auto-generated method stub
		return coreDao.getOne(id);
	}

	@Override
	public List<T> getList(T t) {
		// TODO Auto-generated method stub
		return coreDao.getList(t);
	}

}
