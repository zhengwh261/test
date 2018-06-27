<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<html>
<head>

	<meta name="description" content="">
	<meta name="viewport" content="width=device-width">

	<!-- Bootstrap styles -->
	<link rel="stylesheet" href="style/css/bootstrap.min1.css">

	<!-- Font-Awesome -->
	<link rel="stylesheet" href="style/css/font-awesome/css/font-awesome.min.css">

	<!-- Google Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600|PT+Serif:400,400italic' rel='stylesheet' type='text/css'>

	<!-- Styles -->
	<link rel="stylesheet" href="style/css/style.css" id="theme-styles">

	<!--[if lt IE 9]>
	<script src="js/vendor/google/html5-3.6-respond-1.1.0.min.js"></script>
	<![endif]-->


	<link rel="stylesheet"
		  href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="${pageContext.request.contextPath }/style/js/jquery.min1.js"></script>

	<script
			src="${pageContext.request.contextPath }/style/js/bootstrap.min1.js"></script>
	<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>

	<script
			src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<style type="text/css">
body {
	background-color: #f5f5f5;
}

#contents {
	background-color: #FFF;
	padding-left: 20px;
}
</style>
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-inverse navbar-fixed-top"
					role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index">NENUER's BLOG</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class=""><a href="index" class="glyphicon glyphicon-home">首页</a></li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle glyphicon glyphicon-inbox"
							data-toggle="dropdown">博客中心<strong class="caret"></strong></a> <c:if
								test="${sessionScope.loginUser != null }">
								<ul class="dropdown-menu">
									<li><a href="user/toAddBlog"
										class="glyphicon glyphicon-pencil"> 写博客</a></li>
									<li><a
										href="${pageContext.request.contextPath }/user/blog_list?userId=${loginUser.id}"
										class="glyphicon glyphicon-inbox"> 我的博客</a></li>
								</ul>
								<!-- 进入搜索页面 -->
							</c:if>
						<li><a href="search" class="glyphicon glyphicon-search">搜索智能提示</a></li>

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${loginUser != null }">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">[${loginUser.username }]<strong
									class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="user/logOut"
										class="glyphicon glyphicon-inbox"> 退出帐号</a></li>
									<shiro:hasRole name="admin">
										<li><a
											href="${pageContext.request.contextPath }/cms/index"
											class="glyphicon glyphicon-th-large"> 后台管理</a></li>
									</shiro:hasRole>
								</ul></li>
						</c:if>
						<li><a href="#">关于 </a></li>
						<c:if test="${loginUser == null }">
							<li><a data-toggle="modal" data-target="#loginModal" href=""><span
									class="glyphicon glyphicon-log-in"></span> 登录</a></li>
							<li><a href="user/register"><span
									class="glyphicon glyphicon-user"></span> 注册 </a></li>
						</c:if>

					</ul>
				</div>
				</nav>
			</div>
			</nav>
		</div>

		<br> <br> <br> <br> <br> <br>
	</div>
	<!-- Content -->

	<div class="widewrapper main">
		<div class="container">
			<div class="row">
				<div class="col-md-8 blog-main">
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<article class=" blog-teaser">
								<header>
									<img src="style/pics/1.jpg" alt="">
									<h3>遇见东北师范大学</h3>
									<span class="meta">19 August 2015, John Doe</span>
									<hr>
								</header>
								<div class="body">
									Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, sit. Doloribus dolores neque eos. Velit eveniet, necessitatibus aut sit tenetur perferendis! Commodi pariatur dignissimos, quis sequi odit iusto cumque quod! quis sequi odit iusto cumque quod!
								</div>
								<div class="clearfix">
									<a class="btn btn-clean-one">Read more</a>
								</div>
							</article>
						</div>
						<div class="col-md-6 col-sm-6">
							<article class="blog-teaser">
								<header>
									<img src="style/pics/2.jpg" alt="">
									<h3>闲看校园花开花落</h3>
									<span class="meta">19 August 2015, John Doe</span>
									<hr>
								</header>
								<div class="body">
									Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum, sit. Doloribus dolores neque eos. Velit eveniet, necessitatibus aut sit tenetur perferendis! Commodi pariatur dignissimos, quis sequi odit iusto cumque quod!
								</div>
								<div class="clearfix">
									<a class="btn btn-clean-one">Read more</a>
								</div>
							</article>
						</div>
					</div>
				</div>
				<aside class="col-md-4 blog-aside">

					<div class="aside-widget">
						<header>
							<h3>聚焦热点专题</h3>
						</header>
						<div class="body">
							<ul class="clean-list">
								<li>东师2019届毕业生就业信息</li>
								<li><a href="">又是一年毕业季——《远方有你》</a></li>
								<li><a href="">东师各学院高考历年招生分数</a></li>
								<li><a href="">如何有效提高英语水平</a></li>

							</ul>
						</div>
					</div>

					<div class="aside-widget">
						<header>
							<h3>回顾校内名博</h3>
						</header>
						<div class="body">
							<ul class="clean-list">
								<li>我在东师，且行且拍</li>
								<li><a href="">在东北师大读书是一种什么体验</a></li>
								<li><a href="">从东师到北大我付出了多少</a></li>
								<li>优秀是一种习惯</li>
							</ul>
						</div>
					</div>

				</aside>
			</div>
		</div>
	</div>

	<footer>
		<div class="widewrapper footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 footer-widget">
						<h3> <i class="fa fa-user"></i>关于</h3>

						<p>这是一个由东北师范大学信息科学与技术学院15级本科生团队开发的校园博客，为了让校园更加和谐，为了让校友更加亲密，也欢迎广大外界人员的交流。</p>
					</div>

					<div class="col-md-4 footer-widget">
						<h3> <i class="fa fa-pencil"></i>   博客反馈</h3>
						<ul class="clean-list">
							<li>
								<div align="left"><a href=""> 假如感兴趣在这了解——隐私政策</a>                              </div>
							</li>
							<li>
								<div align="left"><a href="">有建设性的意见请点——意见反馈</a></div>
							</li>
						</ul>
					</div>

					<div class="col-md-4 footer-widget">
						<h3> <i class="fa fa-envelope"></i>联系我们</h3>
						<p>电话：15764308794 </p>
						<p>邮箱：wangyf256@163.com </p>
					</div>

				</div>
			</div>
		</div>
		<div class="widewrapper copyright">
			Copyright 2018 By NENU Dreamers </div>
	</footer>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min1.js"></script>
	<script src="style/js/bootstrap.min1.js"></script>
	<script src="style/js/modernizr.js"></script>

	<!--   登录弹窗 -->
	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h1 class="text-center text-primary">欢迎登录</h1>
				</div>
				<div class="modal-body">
					<form id="login1" action="user/login" method="post"
						class="form col-md-12 center-block">
						<div class="form-group">
							<input id="username" name="username" type="text"
								class="form-control input-lg" placeholder="用户名">
						</div>
						<div class="form-group">
							<input id="password" name="password" type="password"
								class="form-control input-lg" placeholder="登录密码">
						</div>
						<div class="form-group">
							<div id="loginInfo"></div>
						</div>
						<div class="form-group">
							<button id="submit1" class="btn btn-primary btn-lg btn-block"
								type="button" onclick="validatePassword()">立刻登录</button>
						</div>
					</form>
				</div>


				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function validatePassword() {
			var username = $("#username").val();
			var password = $("#password").val();
			/* 判断用户名密码是否为空 */
			if (username == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>用户名不能为空！</b>");
				$("#username").focus();
				return;
			}
			if (password == "") {
				$("#loginInfo").html(
						"<b style='color:red;font-size:15px;'>密码不能为空！</b>");
				$("#password").focus();
				return;
			}
			/* ajax验证密码 */
			$
					.ajax({
						type : "GET",
						url : "validatePassword",
						data : {
							"username" : username
						},
						async : true,
						success : function(data) {
							/* alert(password==data); */
							if (password == data) {
								$("#login1").submit();
							} else {
								$("#loginInfo")
										.html(
												"<b style='color:red;font-size:15px;'>用户名或密码错误！</b>");
							}
							/* alert(data); */
						}
					})
		}
		/* Enter提交 */
		$(document).ready(function() {
			$("body").keydown(function(e) {
				var curKey = e.which;
				if (curKey == 13) {
					/* 这里一定不能为“sunbmit”详情见官方api文档 */
					$("#submit1").click();
					return false;
				}
			});
		});

		/* 天气预报 */
		$
				.getScript(
						'http://php.weather.sina.com.cn/iframe/index/w_cl.php?code=js&day=0&city=&dfc=1&charset=utf-8',
						function(a) {
							var s = "", r = "", q = "";
							for (s in window.SWther.w) {
								q = SWther.w[s][0];
								r = {
									city : s,
									date : SWther.add.now.split(" ")[0] || "",
									day_weather : q.s1,
									night_weather : q.s2,
									day_temp : q.t1,
									night_temp : q.t2,
									day_wind : q.p1,
									night_wind : q.p2
								}, $("#w").html(
										"[" + r.city + "]" + " " + q.s1 + " "
												+ q.t1 + "℃");
							}
						});
	</script>
</body>
</html>