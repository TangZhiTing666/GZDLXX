package com.supersit.gzdlxx.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supersit.gzdlxx.clzdao.ResourceDao;
import com.supersit.gzdlxx.pojo.Resourice;
import com.supersit.gzdlxx.service.ClzResourceService;
@Service
public class ClzResourceServiceImpl implements ClzResourceService {
	private Logger logger=Logger.getLogger(getClass());
	@Autowired
	private ResourceDao rd;
	@Override
	public List<Resourice> getNames(String name) {
		// TODO Auto-generated method stub
		List<Resourice> list = new ArrayList<Resourice>();
		try {
			if(name==null||name.trim().equals("")){
				String str = "农产批发零售市场";
				name =str;
			}
			list=rd.getNames(name);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Resourice> getResouriceByName(String typename, String name) {
		// TODO Auto-generated method stub
		List<Resourice> list = new ArrayList<Resourice>();
		try {
			list = rd.getResouriceByName(typename, name);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Resourice> getResouriceById(String id) {
		// TODO Auto-generated method stub
		List<Resourice> list = new ArrayList<Resourice>();
		try {
			list = rd.getResouriceById(Integer.parseInt(id));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

}
