package ssm.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import ssm.dao.CoreDao;

public class CoreDaoImpl<T> extends SqlSessionDaoSupport implements CoreDao<T> {

	private static final String PREFIX = "mapper.";
	private static final String MAPPER = "Mapper.";
	
	@SuppressWarnings("unchecked")
	public Class<T> getDaoClass(){
		return (Class<T>)((ParameterizedType)this.getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	
	@Override
	public int insert(T t) {
		final String NAME = t.getClass().getSimpleName();
		return this.getSqlSession().insert(PREFIX + NAME + MAPPER + "insert", t);
	}

	@Override
	public int update(T t) {
		final String NAME = t.getClass().getSimpleName();
		return this.getSqlSession().update(PREFIX + NAME + MAPPER + "update", t);
	}

	@Override
	public int delete(int id) {
		final String NAME = getDaoClass().getSimpleName();
		return this.getSqlSession().delete(PREFIX + NAME + MAPPER + "delete",id);
	}

	@Override
	public 	T getOne(int id) {
		final String NAME = getDaoClass().getSimpleName();
		return this.getSqlSession().selectOne(PREFIX + NAME + MAPPER + "getOne", id);
	}

	@Override
	public List<T> getList(T t) {
		final String NAME = t.getClass().getSimpleName();
		return this.getSqlSession().selectList(PREFIX + NAME + MAPPER + "getList", t);
	}

}
