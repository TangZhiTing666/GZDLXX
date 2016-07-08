package com.supersit.gzdlxx.dao;

import com.supersit.gzdlxx.pojo.OperatorLogItem;



public interface OperatorLogDao {

	/**
	 * 添加日志
	 * @param item
	 * @return
	 */
	void add(OperatorLogItem item);
}
