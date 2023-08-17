package com.wealth.config;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//@WebFilter(urlPatterns = "/*", filterName = "CORSFilter")
public class CORSFilter implements Filter {
    @Override
    public void destroy() {
    }

    /**
     * 此过滤器只是处理跨域问题
     * @param servletRequest
     * @param servletResponse
     * @param chain
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        String origin = req.getHeader("Origin");
        if(origin == null) {
            origin = req.getHeader("Referer");
        }
        resp.setHeader("Access-Control-Allow-Origin",origin);
        resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        resp.setHeader("Access-Control-Allow-Headers","Origin, No-Cache, X-Requested-With, If-Modified-Since, Pragma, Last-Modified, Cache-Control, Expires, Content-Type, X-E4M-With,userId,token");
        resp.setHeader("Access-Control-Max-Age", "0");
        resp.setHeader("Access-Control-Allow-Credentials" , "true");
        chain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

}