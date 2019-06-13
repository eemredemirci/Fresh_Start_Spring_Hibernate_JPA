package com.MovieSuggest.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.MovieSuggest")
public class WebMvcConfig implements WebMvcConfigurer {

//	@Bean
//	public ViewResolver getViewResolver() {
//		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
//		resolver.setPrefix("/WEB-INF/views/");
//		resolver.setSuffix(".jsp");
//		return resolver;
//	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler(
				"/resources/**",
				"/sass/**",
				"/fonts/**",
                "/images/**",
                "/css/**",
                "/js/**"
				+ "")
		.addResourceLocations("/resources/",
                "classpath:/static/images/",
                "classpath:/static/css/",
                "classpath:/static/fonts/",
                "classpath:/static/sass/",
				"classpath:/static/js/");

	}

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		registry.jsp().prefix("/WEB-INF/views/").suffix(".jsp");
	}
	// @Bean
	// public MessageSource messageSource() {
	// ResourceBundleMessageSource messageSource = new
	// ResourceBundleMessageSource();
	// messageSource.setBasename("messages");
	// return messageSource;
	// }


	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/").setViewName("home");
		registry.addViewController("/index").setViewName("home");
		registry.addViewController("/movies").setViewName("movies");
		registry.addViewController("/signin").setViewName("signin");
		registry.addViewController("/about");
		registry.addViewController("/contact");
		registry.addViewController("/movies-detail");
		registry.addViewController("/movies-detail1");
		registry.addViewController("/movies-detail2");
		registry.addViewController("/movies-detail3");
		registry.addViewController("/movies-detail4");
		registry.addViewController("/movies-detail5");
		registry.addViewController("/Add-Movie");
		
		
	}

}
