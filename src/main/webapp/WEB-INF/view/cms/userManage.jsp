<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/style/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/style/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/style/bootstrap-table/bootstrap-table.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/style/css/userRoleList.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/style/pnotify/pnotify.custom.min.css">
<link rel="stylesheet"
      href="${pageContext.request.contextPath }/style/datetimepicker/css/bootstrap-datetimepicker.min.css">
<script src="${pageContext.request.contextPath}/style/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/style/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/style/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/style/pnotify/pnotify.custom.min.js"></script>
<script src="${pageContext.request.contextPath }/style/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/style/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/style/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"
        charset="UTF-8"></script>

<body>
<div class="search-wrap" style="padding-top: 30px;">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2">
            <p class="search-title"style="margin-left:400px">会员管理(TODO)</p>
        </div>
</div>
<div>
    <%--user list--%>
<div class="result-wrap">
        <div class="row" style="margin-top:75px">
            <div class="col-md-10"style="float:left">
                <table style=" float:left;width:95%; margin:3px 30px;border-collapse :collapse ;">

                    <tr >
                        <th style="border :1px solid black;padding:15px;text-align:center">
                            ID
                        </th>
                        <th style="border :1px solid black;padding:15px;text-align:center">
                            用户名
                        </th>
                        <th style="border :1px solid black;padding:15px;text-align:center">
                            拥有角色
                        </th>
                        <th style="border :1px solid black;padding:15px;text-align:center">
                            操作
                        </th>
                    </tr>
                        <c:forEach items="${userRole}" var="userRole">
                    <tr >
                        <th style="border :1px solid black;padding:15px;text-align:center">
                         ${userRole.id}
                        </th>
                        <th style="border :1px solid black;padding:15px;text-align:center">
                                ${userRole.username}

                        </th>
                        <th style="border :1px solid black;padding:15px;text-align:center">
                            <c:if test="${ !empty userRole.roles}">
                                ${userRole.roles}
                            </c:if>

                        </th>
                        <th style="border :1px solid black;padding:5px;text-align:center">
                            <a href="${pageContext.request.contextPath}/getRoles?userId=${userRole.id}"  style="width:70px;height:28px;">编辑</a>
                        </th>
                    </tr>
                        </c:forEach>


                </table>
            </div>
            <%--panel--%>
            <div class="col-md-2"style="float:right">
                <div class="panel panel-primary">
                    <div class="panel-heading" id="panelHeading">角色列表</div>
                    <div class="panel-body" id="panelBody">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="userRoles" value="admin">
                                admin
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="userRoles" value="user">
                                user
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="userRoles" value="JAVA_dev">
                                JAVA_dev
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="userRoles" value="IOS_dev">
                                IOS_dev
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="userRoles" value="PHP_dev">
                                PHP_dev
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="userRoles" value="manager">
                                manger
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="userRoles" value="loser">
                                loser
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


</body>
</html>