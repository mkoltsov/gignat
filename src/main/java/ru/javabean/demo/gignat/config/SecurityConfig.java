package ru.javabean.demo.gignat.config;

import ru.javabean.demo.gignat.security.AjaxAuthenticationFailureHandler;
import ru.javabean.demo.gignat.security.AjaxAuthenticationSuccessHandler;
import ru.javabean.demo.gignat.security.AjaxLogoutSuccessHandler;
import ru.javabean.demo.gignat.security.Http401UnauthorizedEntryPoint;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;

import javax.inject.Inject;
import javax.sql.DataSource;

/**
 * Security configuration
 * @author mkoltsov
 */
@EnableWebMvcSecurity
@EnableWebSecurity(debug = true)
@Configuration
@Order
@SuppressWarnings("unused")
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Inject
    private AjaxAuthenticationSuccessHandler ajaxAuthenticationSuccessHandler;

    @Inject
    private AjaxAuthenticationFailureHandler ajaxAuthenticationFailureHandler;

    @Inject
    private AjaxLogoutSuccessHandler ajaxLogoutSuccessHandler;

    @Inject
    private Http401UnauthorizedEntryPoint authenticationEntryPoint;

    @Inject
    DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .exceptionHandling()
                .authenticationEntryPoint(authenticationEntryPoint)
                .and()
                .formLogin()
                .loginProcessingUrl("/security/user/authenticate")
                .successHandler(ajaxAuthenticationSuccessHandler)
                .failureHandler(ajaxAuthenticationFailureHandler)
                .usernameParameter("j_username")
                .passwordParameter("j_password")
                .permitAll()
                .and()
                .logout()
                .logoutUrl("/app/logout")
                .logoutSuccessHandler(ajaxLogoutSuccessHandler)
                .deleteCookies("JSESSIONID")
                .permitAll()
                .and()
                .csrf()
                .disable()
                .headers()
                .frameOptions().disable()
                .authorizeRequests()
                .antMatchers("/security/user/authenticate").permitAll()
                .antMatchers("/api/**").authenticated()
                .antMatchers("/protected/**").authenticated();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/components/**")
                .antMatchers("/dist/**")
                .antMatchers("/lib/**");
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("admin").password("admin").roles("ADMIN", "USER")
                .and()
                .withUser("user").password("user").roles("USER");
    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

}
