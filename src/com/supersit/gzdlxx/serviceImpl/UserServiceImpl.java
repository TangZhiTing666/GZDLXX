package com.supersit.gzdlxx.serviceImpl;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supersit.gzdlxx.common.MD5;
import com.supersit.gzdlxx.dao.LoginUserDao;
import com.supersit.gzdlxx.pojo.ResultItem;
import com.supersit.gzdlxx.pojo.UsersItem;
import com.supersit.gzdlxx.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	private Logger logger=Logger.getLogger(getClass());
	@Autowired
	private LoginUserDao logindao;
	@Override
	public ResultItem LoginUser(String account,String pwd) {
		// TODO Auto-generated method stub
		ResultItem resultitem =new ResultItem();
		int flog = 0;
		String message ="";
		String pages ="";
		try {
			UsersItem usersitem =logindao.selectUser(account);
			if(usersitem!=null){
				if(!usersitem.getStatus().trim().equals("2")){
					pwd=MD5.getMD5(pwd).toLowerCase();//加密后的密文转换为小写
					if(usersitem.getUserPwd().trim().equals(pwd.trim())){
						flog=1;
						message="登陆成功";
						pages ="choose";
						//密码正确后查询权限
						Map map=logindao.getJurisdiction(usersitem.getId());
						resultitem.getSuccessInfo(message, usersitem, pages);
					}else{
						flog=3;
						message="密码不正确";
						pages ="login";
						resultitem.getFailureInfo(flog, message, pages);
					}
				}else{
					flog=2;
					message="账户被锁定";
					pages ="login";
					resultitem.getFailureInfo(flog, message, pages);
				}
			}else{
				flog=0;
				message="账号不存在";
				pages ="login";
				resultitem.getFailureInfo(flog, message, pages);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("登录UserDao异常");
			flog=4;
			message="系统异常，请联系管理员";
			pages ="login";
			resultitem.getFailureInfo(flog, message, pages);
		}
		return resultitem;
	}

}
