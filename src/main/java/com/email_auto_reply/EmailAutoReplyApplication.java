package com.email_auto_reply;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class EmailAutoReplyApplication {
	public static void main(String[] args) {
		SpringApplication.run(EmailAutoReplyApplication.class, args);
	}
}
