<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>AMC管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
<link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
<link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="header">

		<div class="dl-title">
			<!--<img src="/chinapost/Public/assets/img/top.png">-->
		</div>

		<div class="dl-log">
			欢迎您，<span class="dl-log-user">root</span><a
				href="/chinapost/index.php?m=Public&a=logout" title="退出系统"
				class="dl-log-quit">[退出]</a>
		</div>
	</div>
	<div class="content">
		<div class="dl-main-nav">
			<div class="dl-inform">
				<div class="dl-inform-title">
					<s class="dl-inform-icon dl-up"></s>
				</div>
			</div>
			<ul id="J_Nav" class="nav-list ks-clear">
				<li class="nav-item dl-selected">
					<div class="nav-item-inner nav-home">首页</div>
				</li>
				<li class="nav-item dl-selected">
					<div class="nav-item-inner nav-order">系统管理</div>
				</li>
				<li class="nav-item dl-selected">
					<div class="nav-item-inner nav-order">销售管理</div>
				</li>
				<li class="nav-item dl-selected">
					<div class="nav-item-inner nav-order">库存管理</div>
				</li>
				<li class="nav-item dl-selected">
					<div class="nav-item-inner nav-order">采购管理</div>
				</li>
				<li class="nav-item dl-selected">
					<div class="nav-item-inner nav-order">财务管理</div>
				</li>
				<li class="nav-item dl-selected">
					<div class="nav-item-inner nav-order">数据统计</div>
				</li>
			</ul>
		</div>
		<ul id="J_NavContent" class="dl-tab-conten">

		</ul>
	</div>
	<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
	<script type="text/javascript" src="assets/js/bui-min.js"></script>
	<script type="text/javascript" src="assets/js/common/main-min.js"></script>
	<script type="text/javascript" src="assets/js/config-min.js"></script>
	<script>
		BUI.use('common/main', function() {
			var config = [ {
				id : '1',
				menu : [ {
					text : '首页'
				} ]
			}, {
				id : '2',
				menu : [ {
					text : '系统管理',
					items : [ {
						id : '21',
						text : '用户列表',
						href : 'listUser.action'
					}, {
						id : '22',
						text : '添加用户',
						href : 'user/addUser.jsp'
					} ]
				} ]
			}, {
				id : '3',
				menu : [ {
					text : '销售管理',
					items : [ {
						id : '31',
						text : '订单列表',
						href : ''
					}, {
						id : '32',
						text : '添加订单',
						href : ''
					}, {
						id : '33',
						text : '顾客列表',
						href : ''
					}, {
						id : '34',
						text : '添加顾客',
						href : ''
					} ]
				} ]
			}, {
				id : '4',
				menu : [ {
					text : '库存管理',
					items : [ {
						id : '41',
						text : '备货单列表',
						href : ''
					}, {
						id : '42',
						text : '进货通知单列表',
						href : ''
					}, {
						id : '43',
						text : '产品管理',
						href : ''
					}, {
						id : '44',
						text : '添加产品',
						href : ''
					} ]
				} ]
			}, {
				id : '5',
				menu : [ {
					text : '采购管理',
					items : [ {
						id : '51',
						text : '缺货单列表',
						href : ''
					}, {
						id : '52',
						text : '再订货单列表',
						href : ''
					}, {
						id : '53',
						text : '供应商列表',
						href : ''
					}, {
						id : '54',
						text : '添加供应商',
						href : ''
					} ]
				} ]
			}, {
				id : '6',
				menu : [ {
					text : '财务管理',
					items : [ {
						id : '61',
						text : '应收账管理',
						href : ''
					}, {
						id : '62',
						text : '应付账管理',
						href : ''
					}, {
						id : '63',
						text : '销售账查询',
						href : ''
					}, {
						id : '64',
						text : '采购业务帐查询',
						href : ''
					} ]
				} ]
			} ];
			new PageUtil.MainPage({
				modulesConfig : config
			});
		});
	</script>
	<div style="text-align: center;">
		<p>
			来源：<a href="http://www.mycodes.net/" target="_blank">源码之家</a>
		</p>
	</div>
</body>
</html>