
 package com.example.resort.filter;
  
  import java.io.IOException; import java.util.ArrayList;
  
  import org.springframework.stereotype.Component;
  
  import com.example.resort.entity.UserEntity;
  
  import jakarta.servlet.Filter; import jakarta.servlet.FilterChain; import
  jakarta.servlet.ServletException; import jakarta.servlet.ServletRequest;
  import jakarta.servlet.ServletResponse; import
  jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import
  jakarta.servlet.http.HttpSession;
  
  @Component
  
  public class LoginFilter implements Filter{
  
  ArrayList<String> publicURL = new ArrayList<>();
  ArrayList <String> adminURL = new ArrayList<>();
  
  public LoginFilter() { 
	  publicURL.add("/");
	  publicURL.add("/home");
	  publicURL.add("/superiorroom");
	 // publicURL.add("/contectus"); 
	  publicURL .add("/homeoffers");
	  publicURL.add("/rating");
	  publicURL.add("/contact.html");
	  publicURL.add("/contactus");
	  publicURL.add("/login");
	  publicURL.add("/signup");
	  publicURL.add("/saveuser"); 
	  publicURL.add("/forgetpassword");
	  publicURL.add("/sendotp");
	  publicURL.add("/authenticate");
	  publicURL.add("/logout"); 
	  publicURL.add("/updatepassword");  
	  


      // Admin URLs (Only for ADMIN role)
      adminURL .add("/admindashboard");
      adminURL.add("/listuser");
      adminURL.add("/viewuser");
      adminURL.add("/deleteuser");
      adminURL.add("/edituser");
      adminURL.add("/updateuser");
      adminURL.add("/adduser");
      
  }
  
  @Override 
  
  public void doFilter(ServletRequest request, ServletResponse
  response, FilterChain chain) throws IOException, ServletException { 
  
  
  HttpServletRequest req = (HttpServletRequest)request;
  HttpServletResponse res = (HttpServletResponse) response;
  
  String url = req.getRequestURL().toString(); String uri =
  req.getRequestURI();
  
  
  // System.out.println("filter call.........."+url );
  
  System.out.println("filter call.........."+uri );
  
  // Static resources allow
  
  if(publicURL.contains(uri) || uri.contains(".css") || uri.contains(".js") ||
  uri.contains(".dist") || uri.contains(".images") || uri.contains(".png")|| 
  uri.contains(".jpeg")|| 
  uri.contains(".webp") || 
  uri.contains(".gif")|| 
  uri.contains(".svg") || 
  uri.contains("/static") ||
  uri.contains(".woff")){
  
  chain.doFilter(request, response);
  
  }else {
  
  HttpSession session = req.getSession(); UserEntity user =
  (UserEntity)session.getAttribute("user");
  
   if(user == null) {
	   
  req.getRequestDispatcher("login").forward(request, response); 
  
  }else {
	  
	  
	
  chain.doFilter(request, response);
  
  
    
 
  
  }
  
  }
  
 
  
  
  
  } }

