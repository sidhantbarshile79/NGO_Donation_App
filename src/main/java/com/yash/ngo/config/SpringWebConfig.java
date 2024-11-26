package com.yash.ngo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@ComponentScan(basePackages = { "com.yash" })
@EnableWebMvc
public class SpringWebConfig extends WebMvcConfigurerAdapter {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");
	}

	 @Bean
	 public ViewResolver viewResolver()
	 {//to acces private directory
		 InternalResourceViewResolver vr=new InternalResourceViewResolver();
		 vr.setViewClass(JstlView.class);//inside jsp we can use jstl code
		 vr.setPrefix("/WEB-INF/view/");
		 vr.setSuffix(".jsp");
		 return vr;
	 }

}