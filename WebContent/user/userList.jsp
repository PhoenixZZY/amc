<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="../Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="../Css/style.css" />
<script type="text/javascript" src="Js/jquery.js"></script>
<script type="text/javascript" src="Js/jquery.sorted.js"></script>
<script type="text/javascript" src="Js/bootstrap.js"></script>
<script type="text/javascript" src="Js/ckform.js"></script>
<script type="text/javascript" src="Js/common.js"></script>

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
	<form class="form-inline definewidth m20" action="index.html"
		method="get">
		机构名称： <input type="text" name="rolename" id="rolename"
			class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
		<button type="submit" class="btn btn-primary">查询</button>
		&nbsp;&nbsp;
		<button type="button" class="btn btn-success" id="addnew">新增机构</button>
	</form>
	<table class="table table-bordered table-hover definewidth m10">
		<tr>
			<th>用户名</th>
			<th>真实姓名</th>
			<th>密码</th>
			<th>角色权限</th>
			<th>所属部门</th>
			<th>删除</th>
			<th>更新</th>
		</tr>
		<s:iterator value="#request.list" id="us">
			<tr>
				<td><s:property value="#us.userName" /></td>
				<td><s:property value="#us.password" /></td>
				<td><s:property value="1" /></td>
				<td><s:property value="1" /></td>
				<td><s:property value="1" /></td>
				<td><s:property value="1" /></td>
				<td><s:property value="1" /></td>
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
<script>
    $(function () {
        
		$('#addnew').click(function(){

				window.location.href="add.html";
		 });


    });

	function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		
			var url = "index.html";
			
			window.location.href=url;		
		
		}
	}
	
	
	
	