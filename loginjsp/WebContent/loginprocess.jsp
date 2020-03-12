<%@page import="com.rs.bean.LoginDao"%>  
<jsp:useBean id="u" class="com.rs.bean.Login"/>  
  
<jsp:setProperty property="*" name="u"/>  
  
<%  
boolean status=LoginDao.validate(u);  
if(status){  
out.println("You r successfully logged in"); 
out.println("hii"); 

session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="Index.jsp"></jsp:include>  
<%  
}  
%>  