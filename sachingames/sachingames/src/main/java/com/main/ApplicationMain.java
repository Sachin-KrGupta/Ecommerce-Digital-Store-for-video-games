package com.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "com" })
public class ApplicationMain {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = null;
		try {

			context = SpringApplication.run(ApplicationMain.class, args);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (null != context) {
				context.registerShutdownHook();
			}
		}
	}

}
