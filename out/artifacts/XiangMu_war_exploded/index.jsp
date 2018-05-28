<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>后台管理系统</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="./lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="./js/xadmin.js"></script>

</head>
<body>
	<!-- 顶部开始 -->
	<div class="container">
		<div class="logo">
			<a href="./index.jsp">后台管理系统</a>
		</div>
		<div class="left_open">
			<i title="展开左侧栏" class="iconfont">&#xe699;</i>
		</div>
		<ul class="layui-nav left fast-add" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;">新增</a>
				<dl class="layui-nav-child">
					<!-- 二级菜单 -->
					<dd>
						<a onclick="x_admin_show('资讯','http://www.baidu.com')"><i
							class="iconfont">&#xe6a2;</i>资讯</a>
					</dd>
					<dd>
						<a onclick="x_admin_show('图片','http://www.baidu.com')"><i
							class="iconfont">&#xe6a8;</i>图片</a>
					</dd>
					<dd>
						<a onclick="x_admin_show('用户','http://www.baidu.com')"><i
							class="iconfont">&#xe6b8;</i>用户</a>
					</dd>
				</dl></li>
		</ul>
		<ul class="layui-nav right" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;">我的信息</a>
				<dl class="layui-nav-child">
					<!-- 二级菜单 -->
					<dd>
						<a onclick="x_admin_show('个人信息','https://blog.csdn.net/logo_oo/article/category/7595195')">个人信息</a>
					</dd>
					<dd>
						<a onclick="x_admin_show('切换帐号','https://blog.csdn.net/logo_oo/article/category/7595195')">切换帐号</a>
					</dd>
					<dd>
						<a href="Login.jsp">退出</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item to-index"><a href="Login.jsp">前台首页</a></li>
		</ul>

	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">
			<ul id="nav">
				<li><a href="javascript:;"> <i class="iconfont">&#xe6b8;</i>
						<cite>会员管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="login?method=getAllUser"> <i
								class="iconfont">&#xe6a7;</i> <cite>会员列表</cite>

						</a></li>
						<li><a _href="zhuce.jsp"> <i
								class="iconfont">&#xe6a7;</i> <cite>会员注册</cite>

						</a></li>
<!-- 						<li><a _href="member=del.jsp"> <i class="iconfont">&#xe6a7;</i>
								<cite>会员删除</cite>

						</a></li>
 -->
					</ul></li>
<%--				<li><a href="javascript:;"> <i class="iconfont">&#xe723;</i>
						<cite>订单管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="order-list.jsp"> <i class="iconfont">&#xe6a7;</i>
								<cite>订单列表</cite>
						</a></li>
					</ul></li>--%>


<%--				<li><a href="javascript:;"> <i class="iconfont">&#xe726;</i>
						<cite>管理员管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="admin-list.jsp"> <i class="iconfont">&#xe6a7;</i>
								<cite>管理员列表</cite>
						</a></li>
						<li><a _href="admin-role.jsp"> <i class="iconfont">&#xe6a7;</i>
								<cite>角色管理</cite>
						</a></li>
						<li><a _href="admin-cate.jsp"> <i class="iconfont">&#xe6a7;</i>
								<cite>权限分类</cite>
						</a></li>
						<li><a _href="admin-rule.jsp"> <i class="iconfont">&#xe6a7;</i>
								<cite>权限管理</cite>
						</a></li>
					</ul></li>--%>

				<li><a href="javascript:;"> <i class="iconfont">&#xe723;</i>
						<cite>新闻管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="newszengjia.jsp"> <i class="iconfont">&#xe6a7;</i>
								<cite>增加新闻</cite>
						</a></li>
					</ul>
					<ul class="sub-menu">
						<li><a _href="news?method=getAllNews"> <i
								class="iconfont">&#xe6a7;</i> <cite>新闻列表</cite>
						</a></li>
					</ul>
			</ul>
		</div>
	</div>
	<!-- <div class="x-slide_left"></div> -->
	<!-- 左侧菜单结束 -->
	<!-- 右侧主体开始 -->
	<div class="page-content">
		<div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
			<ul class="layui-tab-title">
				<li>我的桌面</li>
			</ul>
			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">
					<iframe src='./welcome.jsp	' frameborder="0" scrolling="yes"
						class="x-iframe"></iframe>
				</div>
			</div>
		</div>
	</div>
	<div class="page-content-bg"></div>
	<!-- 右侧主体结束 -->
	<!-- 中部结束 -->
	<!-- 底部开始 -->
	<div class="footer">
		<div class="copyright">Copyright ©2017 x-admin v2.3 All Rights
			Reserved</div>
	</div>
	<!-- 底部结束 -->
	<script>
		//百度统计可去掉
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>
</html>