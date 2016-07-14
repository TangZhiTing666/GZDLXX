package text;

import org.apache.log4j.Logger;

public class Test_logger {
	private static Logger log=Logger.getLogger(Test_logger.class);
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		log.info("测试日志记录01");
		log.debug("测试日志记录");
		System.out.println("测试日志记录");
	} 

}
