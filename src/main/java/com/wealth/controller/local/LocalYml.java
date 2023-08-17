package com.wealth.controller.local;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Repository;

@Repository
@Data
@Configuration
@ConfigurationProperties(prefix = "storage.local")
public class LocalYml {
    private String uploadAddress;
    private String visitAddress;
}
