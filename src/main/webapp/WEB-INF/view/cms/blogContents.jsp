<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath }/style/js/jquery.min.js"></script>

<script src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/style/wangEditor/js/wangEditor.min.js"></script>
<title>博客详情</title>
</head>
<body>
    <div >
        <table style="width:70%; margin:65px auto;border-collapse :collapse ;">
            <tr >
                <th style="border :1px solid black;padding:15px">
                    <h2>标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题：${blog.title}</h2>
                </th>
            </tr>
            <tr style="border :1px solid black;padding:20px">
                <th style="margin:20px;padding:20px">
                    <h2>博客内容：</h2>
                    <div style="margin:30px 40px 0 60px ;">${blog.content}</div>
                </th>
            </tr>
            <tr >
                <th class="top-wrap" style="width: 100%; height: 30px;padding:30px 0px 0px 350px">
                        <a  href="javascript:;"onClick="javascript:history.back(-1);"class="btn btn-primary btn-sm" role="button">返回上一页</a>
                </th>
            </tr>
        </table>



    </div>

</body>
</html>