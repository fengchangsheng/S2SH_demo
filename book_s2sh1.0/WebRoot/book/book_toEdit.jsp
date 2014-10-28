<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
<!--
body {
	background-color: #CCCCCC;
}
-->
</style></head>
<body>

<form name="form1" method="post" action="book_edit" enctype="multipart/form-data">
<input type="hidden" name="bookdto.id" value="<s:property value="bookdto.id"/>"/>
  <table width="305" border="1" align="center">
    <caption>
      修改图书
    </caption>
    <tr>
      <td width="295">图书名称
      <input type="text" name="bookdto.name" value="<s:property value="bookdto.name"/>"> </td>
    </tr>
    <tr>
      <td>图书作者
      <input type="text" name="bookdto.author" value="<s:property value="bookdto.author"/>"></td>
    </tr>
    <tr>
     <td>图书出版社
      <select name="bookdto.publish.pubId">
     	<option value="<s:property value="bookdto.publish.pubId"/>" selected="selected"><s:property value="bookdto.publish.pubName"/></option> 
      	<s:iterator value="pubs">
      		<option value="<s:property value="pubId"/>" ><s:property value="pubName"/></option>
      	</s:iterator>
      </select>
      </td>
    </tr>
    <!-- 
    <tr style="visibility: hidden;">
          <input type="text" name="imgName" value="${book.imgName }"  />
    </tr>
      <tr>
         <td>
       		 图 片<input type="file" name="photo">
     	 </td>
      </tr>
    -->
      <tr>
      <td align="center"><input type="submit" name="Submit" value="提交"> 
        &nbsp; 
        <input type="submit" name="Submit2" value="重置"></td>
    </tr>
  </table>
</form>
</body>
</html>