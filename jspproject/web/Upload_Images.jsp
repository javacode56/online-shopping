<%-- 
    Document   : Upload_Images
    Created on : Feb 26, 2016, 9:02:53 PM
    Author     : Vijayant Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head> 
<title>File Uploading Form</title> 
</head> 
<body> <br><br/><br/>

<center>
<h3>File Upload:</h3> 
<form action="imageupload.jsp" method="post" enctype="multipart/form-data"> 
   iname:<br><input type="file" name="file" size="50"/><br/> 
   pname:<br><input type="text" name="pname"><br/> 
    price:<br><input type="text" name="price"><br/> 
    pid:<br><input type="text" name="pid"><br><br/>
    ideal:<br><input type="text" name="aa"><br>
    Brand:<br><input type="text" name="bb"><br>
    Package:<br><input type="text" name="cc"><br>
    fabric:<br><input type="text" name="dd"><br>
    rise:<br><input type="text" name="ee"><br>
    Brand:<br><input type="text" name="ff"><br>
    Package:<br><input type="text" name="gg"><br>
    fabric:<br><input type="text" name="hh"><br>
    rise:<br><input type="text" name="ii"><br>
    
    
    
    <br><br/>
    
   
    
    <input type="submit" value="Upload File" /> <br/>
</form> </center>
</body> 
</html>
