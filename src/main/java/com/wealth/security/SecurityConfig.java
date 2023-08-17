package com.wealth.security;

import com.wealth.security.handle.LoginFailureHandler;
import com.wealth.security.handle.LoginSuccessHandler;
import com.wealth.security.handle.MyAccessDeniedHandler;
import com.wealth.security.handle.MyLogoutHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.authentication.Http403ForbiddenEntryPoint;
import org.springframework.web.cors.CorsUtils;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Qualifier("securityUserServiceImpl")
    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private LoginSuccessHandler loginSuccessHandler;

    @Autowired
    private LoginFailureHandler loginFailureHandler;

    @Autowired
    private MyLogoutHandler logoutHandler;

    @Autowired
    private MyAccessDeniedHandler myAccessDeniedHandler;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService)
                .passwordEncoder(NoOpPasswordEncoder.getInstance());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().requestMatchers(CorsUtils::isPreFlightRequest).permitAll();

        http.cors();
        http.csrf().disable();

        http.formLogin()
                .loginProcessingUrl("/login")
                .usernameParameter("username").passwordParameter("password")
                // 登录成功
                .successHandler(loginSuccessHandler)
                // 登录失败
                .failureHandler(loginFailureHandler).permitAll()
                .and()
                // 注销成功
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessHandler(logoutHandler)
                .deleteCookies("JSESSIONID")
                .and()
                // 未登录请求资源
                .exceptionHandling().authenticationEntryPoint(new Http403ForbiddenEntryPoint())
                .accessDeniedHandler(myAccessDeniedHandler)
                .and()
                .authorizeRequests()
                .antMatchers("/login").permitAll()
                .antMatchers("/logout").permitAll()
                .antMatchers("/user/signUp").permitAll()
                .antMatchers("/bet/**").hasAuthority("normal")
                .antMatchers("/match/settle").hasAuthority("admin")
                .antMatchers("/user/**").hasAuthority("normal")
                .antMatchers("/local/**").hasAuthority("admin")
                .antMatchers("/**").permitAll()
                .anyRequest().authenticated();
    }
}