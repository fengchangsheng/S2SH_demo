<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/check.js"></script>
<style type="text/css">
<!--
body {
	background-color: #CCCCCC;
}
-->
</style></head>
<body>
<form name="form1" method="post" action="book_add" onsubmit="return checkAdd(this)" enctype="multipart/form-data">
  <table width="305" border="1" align="center">
    <caption>
      添加图书
    </caption>
    <tr>
      <td width="295">图书名称
      <input type="text" name="bookdto.name"></td>
    </tr>
    <tr>
      <td>图书作者
      <input type="text" name="bookdto.author"></td>
    </tr>
	<tr>
      <td>图书出版社
      <select name="bookdto.publish.pubId">
      	<option value="0">====请选择====</option>
      	<s:iterator value="pubs" var="pub">
      		<option value="<s:property value="#pub.pubId"/>"><s:property value="#pub.pubName"/></option>
      	</s:iterator>
      	<!-- 
      	<c:forEach items="${pubs}" var="pub">
      		<option value=${pub.pubId } >${pub.pubName }</option>
      	</c:forEach>
      	 -->
      </select>
      </td>
    </tr>
    <!-- 
    <tr>
    
      <td>
        图 片<input type="file" name="photo">
      </td>
    </tr>
     -->
    <tr>
      <td align="center"><input type="submit" name="Submit" value="提交"> 
        &nbsp; 
        <input type="reset" name="Submit2" value="重置"></td>
    </tr>
  </table>
</form>
</body>
</html>