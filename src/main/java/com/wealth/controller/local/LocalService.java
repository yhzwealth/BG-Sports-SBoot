package com.wealth.controller.local;

import com.wealth.utils.FileUtils;
import com.wealth.utils.HttpRequestUtil;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

@Service
public class LocalService {

    public String uploadFile(MultipartFile file, String name) {
        if (file == null) {
            return null;
        }
        String requestUrl = "http://121.196.98.183:8546/upload/upload";
        HashMap<String, String> map = new HashMap<>();
        map.put("username", name);
        HashMap<String, File> map2 = new HashMap<>();
        map2.put("avatar", FileUtils.transferToFile(file));
        return HttpRequestUtil.sendPostMultipart(requestUrl, null, map, map2);
    }

    private static void uploadFile(byte[] file, String filePath, String fileName) throws Exception {
        File targetFile = new File(filePath);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        FileOutputStream out = new FileOutputStream(filePath + "/" + fileName);
        out.write(file);
        out.flush();
        out.close();
    }
}
