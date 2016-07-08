package com.supersit.gzdlxx.util;

import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class UUIDGeneratorUtil {

	public String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
	}
}
