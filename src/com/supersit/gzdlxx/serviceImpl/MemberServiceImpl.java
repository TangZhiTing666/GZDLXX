package com.supersit.gzdlxx.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supersit.gzdlxx.dao.MemberDao;
import com.supersit.gzdlxx.dao.MemberPlaceDao;
import com.supersit.gzdlxx.dao.OperatorLogDao;
import com.supersit.gzdlxx.pojo.MemberItem;
import com.supersit.gzdlxx.pojo.MemberPlaceItem;
import com.supersit.gzdlxx.pojo.MemberResponse;
import com.supersit.gzdlxx.pojo.OperatorLogItem;
import com.supersit.gzdlxx.pojo.ResultItem;
import com.supersit.gzdlxx.service.MemberService;
import com.supersit.gzdlxx.util.MD5keyBean;
import com.supersit.gzdlxx.util.PKGenerator;
import com.supersit.gzdlxx.util.Place;
import com.supersit.gzdlxx.util.StringUtil;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao memberDao;
	@Autowired
	private OperatorLogDao operatorLogDao;
	@Autowired
	private MemberPlaceDao memberPlaceDao;
	
	@Override
	public ResultItem add(MemberItem item) {
		ResultItem result=new ResultItem();
		item.setUsername(item.getMobile());
		List<MemberItem> list2=memberDao.searchbymobile(item.getMobile());
		if(list2.size()>0){
			return result.getFailureInfo("该电话号码已被注册");
		}
		item.setId(PKGenerator.getPKValue());
		MD5keyBean m = new MD5keyBean();
		item.setPassword(m.getkeyBeanofStr(item.getPassword()));
		memberDao.add(item);
		return result.getSuccessInfo("注册成功", null);
	}
	@Override
	public ResultItem login(MemberItem item,Double longitud,Double latitude) {
		ResultItem result = new ResultItem();
		String pwd = StringUtil.getMD5Psw(item.getPassword());//对密码进行MD5加密
		List<MemberItem> memberItems=memberDao.searchbymobile(item.getMobile());
		//验证用户是否存在
		if(memberItems==null || memberItems.size()==0){
					result.getFailureInfo("该用户不存在！");
					return result;
		}
		MemberItem memberItem = memberItems.get(0);
		//验证密码是否正确（MD5加密比较）
		if(!pwd.equals(memberItem.getPassword())){
					result.getFailureInfo("密码不正确！");
					return result;
		}
		//把登录地址保存起来
		MemberPlaceItem place=new MemberPlaceItem();
		place.setId(PKGenerator.getPKValue());
		place.setMemberid(memberItem.getId());
		place.setLatitude(latitude);
		place.setLongitud(longitud);
		memberPlaceDao.add(place);
		
		OperatorLogItem operatorlog=new OperatorLogItem();
		operatorlog.setId(PKGenerator.getPKValue());
		operatorlog.setMemberid(memberItem.getId());
		operatorlog.setOperation("会员登陆");
		operatorlog.setRemark(memberItem.getUsername()+"登陆系统");
		operatorLogDao.add(operatorlog);
		
		result.getSuccessInfo(memberItem);
		return result;
	}
	@Override
	public ResultItem findPassword(String mobile, String password) {
		ResultItem result=new ResultItem();
		List<MemberItem> memberItems=memberDao.searchbymobile(mobile);
		//验证用户是否存在
		if(memberItems==null || memberItems.size()==0){
					result.getFailureInfo("该电话号码未注册");
					return result;
		}
		String pwd = StringUtil.getMD5Psw(password);//对密码进行MD5加密
		memberDao.updatepassword(mobile, pwd);
		return result.getSuccessInfo("修改成功", null);
	}
	
	@Override
	public ResultItem updateMember(MemberItem item) {
		ResultItem result=new ResultItem();
		List<MemberItem> list=memberDao.searchbyusername(item.getUsername());
		if(list.size()>0){
			return result.getFailureInfo("该用户名已被使用");
		}
		memberDao.updateMember(item);
		return result.getSuccessInfo("member", null);
	}
	@Override
	public List<MemberResponse> selectMemberByUsername(String username, int start, int end) {	
		return memberDao.selectMemberByUsername(username, start, end);
	}
	@Override
	public List<MemberResponse> selectMemberByArea(String memberid, int start, int end) {
		//1.根据id查找地理位置
		List<MemberPlaceItem> list=memberPlaceDao.selectByMemberid(memberid);
		MemberPlaceItem m=list.get(0);
		//搜索附近1000米内的用户
		double[] b=Place.getAround(m.getLatitude(),m.getLongitud(),1000);
		
		return memberPlaceDao.selectMemberByArea(b[0], b[2], b[1], b[3], start, end);
	}

}
