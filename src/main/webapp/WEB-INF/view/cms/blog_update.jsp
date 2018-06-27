<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>
<!--引入wangEditor.css-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/style/wangEditor/css/wangEditor.min.css">
<!--引入jquery和wangEditor.js-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/style/wangEditor/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/style/wangEditor/js/wangEditor.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改博客</title>
</head>
<body>
	<form class="form-horizontal"
		action="${pageContext.request.contextPath}/cms/update/blog"
		method="post" style="margin-top: 250px">
		<div class="form-group">
			<div class="col-md-3"></div>
			<label  class="control-label" id="title"></label>
			<div class="col-md-5 text-left">
				<div class="col-md-5 text-left">
					<input type="hidden"  class="form-control" name="id" size="20" maxlength="20" value="${blog.id}"/>

				</div>
				<input type="text" class="form-control" name="title" size="20" maxlength="20" value="${blog.title}">
			</div>
		</div>


		<div class="form-group">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<textarea id="textarea1" name="content" rows="15" maxlength="1000">
   				 <p>${blog.content}</p>
				</textarea>
			</div>
			<div class="col-md-3"></div>
		</div>

		<div class="form-group">
			<div class="col-md-5"></div>
			<div class="col-md-2">
				<button type="submit" class="btn btn-primary">修改博客</button>
				<button  href="javascript:;"onClick="javascript:history.back(-1);"class="btn btn-primary btn-sm" role="button">返回上一页</button>
			</div>
		</div>
	</form>
	<!--这里引用jquery和wangEditor.js-->
	<script type="text/javascript">
		var editor = new wangEditor('textarea1');
		editor.create();
	</script>
</body>
</html>