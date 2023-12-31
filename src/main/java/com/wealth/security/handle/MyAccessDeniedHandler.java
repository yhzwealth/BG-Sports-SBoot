package com.wealth.security.handle;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Component
public class MyAccessDeniedHandler implements AccessDeniedHandler {
    @Override
    public void handle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AccessDeniedException e) throws IOException {
        httpServletResponse.setStatus(HttpServletResponse. SC_FORBIDDEN );
        httpServletResponse.setHeader( "Content-Type", "application/json;charset=utf-8");
        httpServletResponse.setHeader("Access-Control-Allow-Credentials", "true");
        httpServletResponse.setHeader("Access-Control-Allow-Origin", httpServletRequest.getHeader("Origin"));
        httpServletResponse.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, x-content-type-options");
        httpServletResponse.setHeader("Access-Control-Expose-Headers", "Content-Disposition");

        PrintWriter out = httpServletResponse.getWriter();
        out.write( "{\"status\": \"error\", \"msg\":\"权限不足请联系管理员!!\"}");
        out.flush();
        out.close();
    }
}
