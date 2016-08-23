package com.supersit.gzdlxx.serviceImpl;

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
			//一次查询直接获取所有信息
			UsersItem usersitem =logindao.selectUser(account);
			if(usersitem!=null){
				if(!usersitem.getStatus().trim().equals("2")){
					pwd=MD5.getMD5(pwd).toLowerCase();//加密后的密文转换为小写
					if(usersitem.getUserPwd().trim().equals(pwd.trim())){
						flog=1;
						message="登陆成功";
						pages ="choose";
						//密码正确后查询权限 
						//List<Jurisdiction> list=logindao.getJurisdiction(usersitem.getId());			
						//System.out.println("list.size=="+usersitem.getList().size());
						//usersitem.setList(list);
						//添加token
						double number=Math.random()*10000000;
						//System.out.println(number);
						logindao.updatePcToken(usersitem.getId(),(""+number));
						usersitem.setPcToken(""+number);
						//用户登录成功，还原用户登录密码错误次数，0
						logindao.updatePwdErrNum(usersitem.getId(), 0);	
						resultitem.getSuccessInfo(message, usersitem, pages);
					}else{
						
						flog=3;
						message="密码不正确";
						int num=0;
						if(!account.trim().equals("administrator")){
							if(usersitem.getPwderrnum()<4){
								//System.out.println(usersitem.getId());
								num=usersitem.getPwderrnum()+1;
								//System.out.println(num);
								logindao.updatePwdErrNum(usersitem.getId(), num);	
								message="密码不正确,您今天已经连续"+num+"次密码输入错误，连续5次输入错误账号将会被锁定。";
							}else if(usersitem.getPwderrnum()==4){
								num=usersitem.getPwderrnum()+1;
								//System.out.println(num);
								message="密码不正确,您今天已经连续"+num+"次密码输入错误，账号被锁定。";
								//锁定账号
								logindao.updateStatus(usersitem.getId(), "2");
							}														
						}
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
	
	@Override
	public UsersItem getUsers(String userid) {
		// TODO Auto-generated method stub
		UsersItem usersItem =new UsersItem();
		
		try {
			usersItem = logindao.findUser(userid);					
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			logger.debug("用户权限查询异常");
		}
		return usersItem;
	}
	@Override
	public ResultItem gobackchoose(String userid){
		ResultItem resultitem =new ResultItem();
		UsersItem usersItem = getUsers(userid);
		String message="登陆成功";
		String pages ="choose";
		resultitem.getSuccessInfo(message, usersItem, pages);
		return resultitem;
	}
}
