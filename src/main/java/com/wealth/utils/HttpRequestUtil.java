package com.wealth.utils;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.NameValuePair;
import org.apache.http.client.CookieStore;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/**
 * @Description:[ HttpUtils ]
 * @Author: tarzan Liu
 * @Company: 洛阳图联科技有限公司
 * @Date: 2019/10/31 9:11
 */
public class HttpRequestUtil {

    private static CookieStore cookieStore = new BasicCookieStore();

    private static CloseableHttpClient httpClient = null;
    /**
     * 方法描述: 发送get请求
     *
     * @param url
     * @param params
     * @param header
     * @Return {@link String}
     * @throws
     * @date 2020年07月27日 09:10:10
     */
    public static String sendGet(String url, Map<String, String> params, Map<String, String> header) throws Exception {
        HttpGet httpGet = null;
        String body = "";
        try {
            CloseableHttpClient httpClient = HttpClients.custom()
                    .setDefaultCookieStore(cookieStore).build();
            List<String> mapList = new ArrayList<>();
            if (params != null) {
                for (Entry<String, String> entry : params.entrySet()) {
                    mapList.add(entry.getKey() + "=" + entry.getValue());
                }
            }
            if (CollectionUtils.isNotEmpty(mapList)) {
                url = url + "?";
                String paramsStr = StringUtils.join(mapList, "&");
                url = url + paramsStr;
            }
            httpGet = new HttpGet(url);
            httpGet.setHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
            httpGet.setHeader("User-Agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36");
            httpGet.setHeader("X-Requested-With","XMLHttpRequest");
            if (header != null) {
                for (Entry<String, String> entry : header.entrySet()) {
                    httpGet.setHeader(entry.getKey(), entry.getValue());
                }
            }
            HttpResponse response = httpClient.execute(httpGet);

            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode != HttpStatus.SC_OK) {
                throw new RuntimeException("请求失败");
            } else {
                body = EntityUtils.toString(response.getEntity(), "UTF-8");
            }
        } catch (Exception e) {
            throw e;
        } finally {
            if (httpGet != null) {
                httpGet.releaseConnection();
            }
        }
        return body;
    }

    /**
     * 方法描述: 发送post请求-json数据
     *
     * @param url
     * @param json
     * @param header
     * @Return {@link String}
     * @throws
     * @date 2020年07月27日 09:10:54
     */
    public static String sendPostJson(String url, String json, Map<String, String> header) throws Exception {
        HttpPost httpPost = null;
        String body = "";
        try {
            CloseableHttpClient httpClient = HttpClients.custom()
                    .setDefaultCookieStore(cookieStore).build();
            httpPost = new HttpPost(url);
            httpPost.setHeader("Content-type", "application/json; charset=utf-8");
            httpPost.setHeader("User-Agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36");
            //httpPost.setHeader("X-Requested-With","XMLHttpRequest");
            if (header != null) {
                for (Entry<String, String> entry : header.entrySet()) {
                    httpPost.setHeader(entry.getKey(), entry.getValue());
                }
            }
            StringEntity entity = new StringEntity(json, Charset.forName("UTF-8"));
            entity.setContentEncoding("UTF-8");
            entity.setContentType("application/json");
            httpPost.setEntity(entity);
            HttpResponse response = httpClient.execute(httpPost);

            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode != HttpStatus.SC_OK) {
                throw new RuntimeException("请求失败");
            } else {
                body = EntityUtils.toString(response.getEntity(), "UTF-8");
            }
        } finally {
            if (httpPost != null) {
                httpPost.releaseConnection();
            }
        }
        return body;
    }

    /**
     * 方法描述: 发送post请求-form表单数据
     *
     * @param url
     * @param params
     * @param header
     * @Return {@link String}
     * @throws
     * @date 2020年07月27日 09:10:54
     */
    public static String sendPostForm(String url, Map<String, String> params, Map<String, String> header) throws Exception {
        HttpPost httpPost = null;
        String body = "";
        try {
            CloseableHttpClient httpClient = HttpClients.custom()
                    .setDefaultCookieStore(cookieStore).build();
            httpPost = new HttpPost(url);
            httpPost.setHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
            httpPost.setHeader("User-Agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36");
            if (header != null) {
                for (Entry<String, String> entry : header.entrySet()) {
                    httpPost.setHeader(entry.getKey(), entry.getValue());
                }
            }
            List<NameValuePair> nvps = new ArrayList<>();
            if (params != null) {
                for (Entry<String, String> entry : params.entrySet()) {
                    nvps.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
                }
            }
            //设置参数到请求对象中
            httpPost.setEntity(new UrlEncodedFormEntity(nvps, "UTF-8"));
            HttpResponse response = httpClient.execute(httpPost);

            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode != HttpStatus.SC_OK) {
                throw new RuntimeException("请求失败");
            } else {
                body = EntityUtils.toString(response.getEntity(), "UTF-8");
            }
        } finally {
            if (httpPost != null) {
                httpPost.releaseConnection();
            }
        }
        return body;
    }

    public static void clearCookie(){
        cookieStore = new BasicCookieStore();
    }

    public static String sendPostMultipart(String url, Map<String, String> header, Map<String, String> params, Map<String, File> files){
        HttpPost httpPost = null;
        String body = "";
        String boundary = "---------------------------123821742118716";
        try {
            CloseableHttpClient httpClient = HttpClients.custom()
                    .setDefaultCookieStore(cookieStore).build();
            httpPost = new HttpPost(url);
            httpPost.setHeader("Content-type", "multipart/form-data; boundary="+boundary);
            httpPost.setHeader("User-Agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36");
            if (header != null) {
                for (Entry<String, String> entry : header.entrySet()) {
                    httpPost.setHeader(entry.getKey(), entry.getValue());
                }
            }
            MultipartEntityBuilder builder = MultipartEntityBuilder.create();
            //字符编码
            builder.setCharset(StandardCharsets.UTF_8);
            //模拟浏览器
            builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);
            //设置边界
            builder.setBoundary(boundary);
            if(files!=null) {
                for (Entry<String, File> entry : files.entrySet()) {
                    builder.addPart("multipartFile",new FileBody(entry.getValue()));
                    //application/octet-stream 代表不知道是什么格式的文件
                    builder.addBinaryBody(entry.getKey(),entry.getValue(), ContentType.create("application/octet-stream"), entry.getValue().getName());
                }
            }
            if(params!=null){
                for (Entry<String, String> entry : params.entrySet()) {
                    builder.addTextBody(entry.getKey(),entry.getValue());
                }
            }
            HttpEntity entity = builder.build();
            httpPost.setEntity(entity);

            HttpResponse response = httpClient.execute(httpPost);

            int statusCode = response.getStatusLine().getStatusCode();
            if (statusCode != HttpStatus.SC_OK) {
                throw new RuntimeException("请求失败");
            } else {
                body = EntityUtils.toString(response.getEntity(), "UTF-8");
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (httpPost != null) {
                httpPost.releaseConnection();
            }
        }
        return body;
    }
}