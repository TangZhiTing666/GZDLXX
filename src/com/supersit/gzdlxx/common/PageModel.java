package com.supersit.gzdlxx.common;



/**
 * @Author xlei
 * @Tel 13360026135
 * @Email 251425887@qq.com
 * @Version 1.0
 * @Time 2015年11月16日下午2:09:25
 * @From www.fkjava.org
 *  分页实体 
 */
public class PageModel {
	
	/** 当前页面 */
	private int pageIndex ;
	
	/** 每页的数据数目 */
	private int pageSize = Constant.PAGE_SIZE;
	
	/** 总的记录条数：需要分页的数据总数   */
	private  int recordCount;

	public int getPageIndex() {
		
		/** 不能超过总页码  : 如果超过总页码给最后一页*/
		pageIndex = pageIndex > this.getTotalSize() ? this.getTotalSize() : pageIndex;
		
		return pageIndex <= 0 ? 1 : pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageSize() {
		return pageSize < Constant.PAGE_SIZE ? Constant.PAGE_SIZE :pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRecordCount() {
		return recordCount < 0 ? 0 : recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public int getTotalSize() {
		return (this.getRecordCount() - 1 ) / this.getPageSize() + 1;
	}
	
	 public int getFirstParam(){
		 return (this.getPageIndex() -1)*this.getPageSize();
	 }
	
	 public int getEndParam(){
		 return this.getPageIndex()*this.getPageSize();
	 }
	
	
}







