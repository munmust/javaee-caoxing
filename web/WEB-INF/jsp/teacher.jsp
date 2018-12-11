<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/12/6
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/css/metisMenu.min.css" rel="stylesheet" />
    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/css/dataTables.bootstrap.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/sb-admin-2.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/boot-crm.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <style>
        .Class_list{
            display: flex;
        }
    </style>
</head>
<body>
<p>${User.user_name}</p>
<div class="Class_list">
<c:forEach items="${ClassList}" var="item" varStatus="status">
    <div>
        <h1 class="center"><span class="center">${item.class_name}</span></h1>
        <h3>${item.create_user_name}</h3>
        <p>${item.class_des}</p>
    </div>
</c:forEach>
</div>
<a href="#" class="btn btn-primary" data-toggle="modal"
   data-target="#newCustomerDialog">新建</a>
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabels">新建课程信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_customer_form">
                    <div class="form-group">
                        <label for="new_classId" class="col-sm-2 control-label">
                            课程编号
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_classId" placeholder="课程编号" name="class_id" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_className" class="col-sm-2 control-label">
                            课程名称
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_className" placeholder="课程名称" name="class_name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_classDes" class="col-sm-2 control-label">
                            课程简介
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_classDes" placeholder="课程简介" name="class_des" />
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary" onclick="createCustomer()" >创建课程</button>
            </div>
        </div>
    </div>
</div>

<script>
    function createCustomer() {
        $.post("${pageContext.request.contextPath}/addClass",
            $("#new_customer_form").serialize(),function(data){
                if(data =="OK"){
                    alert("客户创建成功！");
                    window.location.reload();
                }else{
                    alert("客户创建失败！");
                    window.location.reload();
                }
            });
    }
</script>
</body>
</html>
