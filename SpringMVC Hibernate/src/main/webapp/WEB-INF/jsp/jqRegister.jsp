<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
   <head>
      <title>註冊頁面</title>
   </head>

   <body style="background-color:#84C1FF;">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <h3>帳號註冊</h3>
      <form:form method = "post" action ="" onclick="return false">
         <table>
         <tr>
               <td><form:label path = "userName">帳號</form:label></td>
               <td><input type="text" id="userName" placeholder="請輸入帳號" required></td>
            </tr>
            <tr>
               <td><form:label path = "password">密碼</form:label></td>
               <td><input type="password" id="password" placeholder="請輸入密碼" required></td>
            </tr>
            <tr>
               <td><form:label path = "aid">電話</form:label></td>
               <td><input type="text" id="aid" placeholder="請輸入電話" required></td>
            </tr>
<!--             <tr> -->
<%--                <td><form:label path = "userName">帳號</form:label></td> --%>
<%--                <td><form:input path = "userName" id="userName" /></td> --%>
<!--             </tr> -->
<!--             <tr> -->
<%--                <td><form:label path = "password">密碼</form:label></td> --%>
<%--                <td><form:input path = "password"  id="password"/></td> --%>
<!--             </tr> -->
<!--             <tr> -->
<%--                <td><form:label path = "aid">電話</form:label></td> --%>
<%--                <td><form:input path = "aid"  id="aid"/></td> --%>
<!--             </tr> -->
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "送出" onclick="send()" />                                   
               </td>
            </tr>
         </table>  
      </form:form>
      <div id="div1"></div>
      <script>
          function send(){
              $.post("addAccount",{"password":$("#password").val() , "userName":$("#userName").val(),"aid":$("#aid").val()},function(data){
                   $("#div1").html(data); 
              });
          }
          
          function result(data,status){
        	  $("#div1").html(data); 
           }
          function display(){
        	  $.ajax({
                  url: "list",
                 cache:false,
                  type: "get",
                  dataType: 'html',
                  success: function (msg) {                      
                      $("#div1").html(msg);
                  }
               
              });
          }
                 
      </script>
      
      <a href="${pageContext.request.contextPath }/product">回到商品介紹</a>
   </body>
   
</html>

 
