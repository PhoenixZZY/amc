<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/Css/style.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/jquery.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/jquery.sorted.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/bootstrap.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/ckform.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/Js/common.js"></script>
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
	<s:form method="post" class="definewidth m20" action="addUser">
		<table class="table table-bordered table-hover m10">
			<tr>
				<td class="tableleft">用户名</td>
				<td><input type="text" name="user.userName" /></td>	
			</tr>
			<tr>
				<td class="tableleft">密码</td>
				<td><input type="text" name="user.password" /></td>
			</tr>
			<tr>
				<td class="tableleft">真实姓名</td>
				<td><input type="text" name="user.realName" /></td>
			</tr>
			<tr>
				<td class="tableleft">所属部门</td>
				<td><input type="text" name="user.department" /></td>
			</tr>
			<tr>
				<td width="10%" class="tableleft">角色名</td>
				<td><select name="user.roleId">
						<option value='0'></option>
						<option value='1'>&nbsp;系统管理</option>
						<option value='2'>&nbsp;销售管理</option>
						<option value='3'>&nbsp;库存管理</option>
						<option value='4'>&nbsp;采购管理</option>
						<option value='5'>&nbsp;财务管理</option>
				</select></td>
			</tr>
			<tr>
				<td class="tableleft"></td>
				<td>
					<button type="submit" class="btn btn-primary" type="button">保存</button>
				</td>
			</tr>
		</table>
	</s:form>
</body>
</html>
