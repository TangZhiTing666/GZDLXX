package com.supersit.gzdlxx.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.stereotype.Component;
@Component
public class CreateDateDirUtil {

	public String create(String savePath) {
		Calendar date = Calendar.getInstance();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy");
		SimpleDateFormat format2 = new SimpleDateFormat("MM");
		SimpleDateFormat format3 = new SimpleDateFormat("dd");
		String name1 = format1.format(date.getTime());
		String name2 = format2.format(date.getTime());
		String name3 = format3.format(date.getTime());
		File file1 = new File(savePath + "/" + name1);
		File file2 = new File(savePath + "/" + name1 + "/" + name2);
		File file3 = new File(savePath + "/" + name1 + "/" + name2 + "/"
				+ name3);
		if (!file1.exists() && !file1.isDirectory()) {
			file1.mkdir();
		}
		if (!file2.exists() && !file2.isDirectory()) {
			file2.mkdir();
		}
		if (!file3.exists() && !file3.isDirectory()) {
			file3.mkdir();
		}
		return name1 + "/" + name2 + "/" + name3+ "/";
	}
}
