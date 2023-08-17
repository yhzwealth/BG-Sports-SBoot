package com.wealth.controller.local;

import com.wealth.utils.Result;
import com.wealth.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/local")
public class DemoController {
    @Autowired
    LocalService service;

    @PostMapping("/uploadAvatar")
    public Result uploadAvatar(@RequestParam(value = "file") MultipartFile file){
        String username = SecurityUtils.getCurrentUsername();
        if(username != null){
            if(file == null){
                return Result.error("文件为空");
            }
            String f = service.uploadFile(file,username);
            if(f == null){
                return Result.error("文件上传失败");
            }else{
                return Result.success(f);
            }
        }
        return Result.error("登录信息已失效");
    }
}
