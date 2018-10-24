<%@ page contentType="text/html; charset=utf8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld"%>
<%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld"%>
<%@ taglib prefix="bean" uri="/WEB-INF/struts-bean.tld"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>措滹人力资源管理系统--部门管理</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<jsp:useBean id="getSystemTime" scope="page" class="com.wy.tool.GetSystemTime"></jsp:useBean>
<script language="javascript">
function checkEmptyForm(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){

alert(form.elements[i].title);
return false;
}
}





}
</script>
</head>
<body>
<table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
    
      <jsp:include page="top.jsp" flush="true" />   
	  
	     <table width="801" height="48" border="0" cellpadding="0" cellspacing="0" background="images/center1.jpg">
        <tr>
          <td valign="top">		  <table width="494">
            <tr>
              <td width="45" height="25">&nbsp;</td>
              <td width="437" valign="bottom"><font color="#66583D"><b>部门管理&nbsp;</b></font>&gt; <font color="#FF0000"> 部门添加</font></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="801" height="436" border="0" cellpadding="0" cellspacing="0" background="images/center2.jpg">
        <tr>
          <td height="436" valign="top" align="center">           <html:form action="department.do?method=insertDepartment" onsubmit="return checkEmptyForm(departmentForm)">          
            <table width="355" border="1" cellpadding="1" cellspacing="1" bordercolor="#FFFFFF" bgcolor="66583D">
              <tr>
                <th width="79" height="30"><span class="word_white">部门名称：</span></th>
                <td width="263" bgcolor="#FFFFFF"><html:text property="dt_name" title="请输入部门名称"/></td>
              </tr>
              <tr>
                <th height="30"><span class="word_white">创建时间：</span></th>
                <td bgcolor="#FFFFFF"><html:hidden property="dt_createTime" value="<%=getSystemTime.getToday()%>"/><%=getSystemTime.getToday()%></td>
              </tr>
              <tr>
                <th height="30"><span class="word_white">备注信息：</span></th>
                <td bgcolor="#FFFFFF"><html:text property="dt_bz" title="请输入部门备注信息"/></td>
              </tr>
            </table><br>         
              <html:submit>保存</html:submit>
              &nbsp;&nbsp;
              <html:reset>重置</html:reset>
               &nbsp;&nbsp;
			   <html:button property="button" value="返回"  onclick="javascript:history.go(-1);"></html:button>
			   
			   </html:form></td>
        </tr>
      </table>
	  <jsp:include page="down.jsp" flush="true" />
    </td>
  </tr>
</table>
</body>
</html:html>
