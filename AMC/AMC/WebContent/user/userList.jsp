<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Css/style.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/Js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Js/jquery.sorted.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Js/ckform.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/Js/common.js"></script>
<script type="text/javascript">  
        function del(){  
            if(confirm("确定要删除吗?")){  
                return true;  
            }  
            return false;  
        }  
    </script>  
<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
</head>
<body>
	<table class="table table-bordered table-hover definewidth m10">
		<tr>
			<th>用户编号</th>
			<th>用户名</th>
			<th>密码</th>
			<th>真实姓名</th>
			<th>所属部门</th>
			<th>角色名</th>
			<th>角色权限</th>
			<th>操作</th>
		</tr>
		<s:iterator value="#request.list" id="us">
			<tr>
				<td><s:property value="#us.userId" /></td>
				<td><s:property value="#us.userName" /></td>
				<td><s:property value="#us.password" /></td>
				<td><s:property value="#us.realName" /></td>
				<td><s:property value="#us.department" /></td>
				<td><s:property value="#us.roleName" /></td>
				<td><s:property value="#us.roleDescription" /></td>
				<td>
				<s:a href="deleteUser.action?user.userId=%{#us.userId}" onclick="return del()">删除</s:a>
				<s:a href="updatePUser.action?user.userId=%{#us.userId}">编辑</s:a> 
				</td>
			</tr>
		</s:iterator>
	</table>
	<div class="inline pull-right page">
		10122 条记录 1/507 页 <a href='#'>下一页</a> <span class='current'>1</span><a
			href='#'>2</a><a href='/chinapost/index.php?m=Label&a=index&p=3'>3</a><a
			href='#'>4</a><a href='#'>5</a> <a href='#'>下5页</a> <a href='#'>最后一页</a>
	</div>
</body>
</html>
