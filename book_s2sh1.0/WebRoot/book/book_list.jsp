<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<script type="text/javascript" src="js/quanfan.js"></script>
	<script type="text/javascript" src="jQuery/jquery.js"></script>
	<script type="text/javascript" src="js/autoComplete.js"></script>	
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type= text/css  rel= "stylesheet"  href="css/ajaxtags.css" />
	<link type= text/css  rel= "stylesheet"  href="css/displaytag.css" />
	
  <style type="text/css">
<!--
body {
	background-color: #CCCCCC;
}
-->
</style></head>
  <body>
  <!--  
  <c:if test="${username!=null}">
  <h5 style="color: red;">欢迎光临!<c:if test="${roleId==1}">管理员</c:if>${username }</h5>
  </c:if>
  <c:if test="${username==null}">
 	<a href="login.do">请登录</a>
  </c:if>
  -->
  <h5>读一本好书,就像是和一个高尚的人谈话</h5>
  <h1 align="center">图书信息列表</h1> 
   <form name="form2" method="post" action="list.do">
   <table align="center">
   	<tr >
    	<td colspan="3" align="center"><input type="text" name="cname" value="搜索名"> 
    	 <input type="submit" name="submit" value="模糊搜索"><a href="back.do">返回</a></td>
	 </tr>

    <tr>
    	<td><input type="text" name="bname" id="query"  ></td>
    	<td>出版社
    	<!-- 
    	<select name="pubname">
    		<option value="0">====请选择====</option>
    		<c:forEach items="${pubs}" var="pub">
    		    <option value="${pub.pubId }">${pub.pubName}</option>
    		</c:forEach>
    	</select> --></td>
    	<td><input type="submit" name="submit2" value="精确搜索"></td>
    </tr>
    <%--此处添加自动补全--%>
    <tr >
    	<td align="center" >
    	<div id="auto"></div>
    	</td>
	 </tr>
    </table>
  </form>
  <form name="form1" method="post" action="book_delete">
    <table width="600" border="1" align="center">
      <tr>
        <td><label>
          <input type="checkbox" name="checkbox" value="checkbox" onclick="quanxuan()">
        </label></td>
        <td>图书ID</td>
        <td>图书名</td>
        <td>图书作者</td>
		<td>出版社</td>
        <td>操作</td>
      </tr>
		<s:iterator value="books" >
		<tr>
        <td><input type="checkbox" name="ids" value="<s:property value="id"/>"></td>
        <td><s:property value="id"/></td>
        <td><s:property value="name"/></td>
        <td><s:property value="author"/></td>
		<td><s:property value="publish.pubName"/></td>
        <td><a href="book_toEdit?id=<s:property value="id"/>">修改</a></td>
      </tr>
      </s:iterator>
      <tr>
        <td colspan="7" align="center">
        <input type="submit" name="Submit" value="批量删除">
        <input type="button" name="Submit2" value="添加" onClick="location='book_toAdd'">
 <!-- 
        第${curpage}页
        <c:if test="${curpage>1}">
        <a href="list.do?page=1">首页</a>
        <a href="list.do?page=${curpage-1}">上一页</a>
       </c:if>
       	<c:if test="${curpage<totalPage}">
        <a href="list.do?page=${curpage+1}">下一页</a>
        <a href="list.do?page=${totalPage}">尾页</a>
       </c:if>     
       总共【${curpage}/${totalPage}】页
         </td>
          -->  
      </tr>
    </table>
  </form>
  <br>
  </body>
</html>
