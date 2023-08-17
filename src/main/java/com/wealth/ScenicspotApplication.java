package com.wealth;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
public class ScenicspotApplication {

    public static void main(String[] args) {
        SpringApplication.run(ScenicspotApplication.class, args);
    }

}
