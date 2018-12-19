<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/" %>
<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/12/17
  Time: 17:44
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

        body {
            font: 12px/1.5 MIcrosoft YaHei, Arial, Helvetica, sans-serif;
            color: #333;
        }
        .c-header {
            border-bottom: 1px solid #e4e4e5;
            background: #fff;
            width: 100%;
            z-index: 1;
        }
        .headerwrap {
            width: 1100px;
            margin: 0px auto;
            position: relative;

            z-index: 1;
            color: #fff;
            overflow: hidden;
        }
        .c-menu {
            float: right;
            margin-top: 5px;
            color: #fff;
        }
        .navhide {
            font-size: 18px;
            color: #333;
            float: left;
            cursor: pointer;
            display: none;
        }
        .navhide span {
            width: 27px;
            height: 27px;
            display: inline-block;
            float: left;
            margin-right: 6px;
            cursor: pointer;
        }
        .navshow {
            display: block;
        }
        .navshow {
            float: left;
        }
        .navshow ul {
            float: left;
            margin-right: 10px;
        }
        ul, ol, dl {
            list-style: none;
        }
        ul, menu, dir {
            display: block;
            list-style-type: disc;

        }
        .c-menu li {
            float: left;
            margin-left: 10px;
            position: relative;
        }
        .c-menu li a.current {
            background: #999;
            color: #fff;
        }
        .c-menu li a {
            font-size: 18px;
            color: #333;
            padding: 2px 8px;
            border-radius: 3px;
        }
        a {
            color: #202020;
            text-decoration: none;
        }
        .c-header h1 {
            font-size: 24px;
            color: #333;
            font-weight: normal;
        }
        .c-header h1 span.articleschool {
            font-size: 14px;
            color: #fff;
            text-decoration: underline;
        }



        .ZyTop {
            margin-top: 30px;
            padding: 20px 20px;
        }
        .ZyTop p {
            line-height: 22px;
            margin-top: 10px;
            color: #989898;
        }
        b, em, i, u, strong {
            font-weight: normal;
            font-style: normal;
            text-decoration: none;
        }
        .Zy_TItle {
            padding: 10px 0;
            border-top: solid 1px #CCC;
        }
        .Zy_ulTop {
            padding: 0 10px;
            padding-bottom: 10px;
        }
        ul, ol, dl {
            list-style: none;
        }
        .Zy_ulTop li {
            line-height: 28px;
            margin-top: 10px;
        }
        .Zy_ulTop li i {
            display: inline-block;
            width: 45px;
            text-align: center;
            color: #ccc;
            font-size: 14px;
        }
        .Zy_ulTop li a {
            color: #555;
            text-decoration: none;
            width: calc(100% - 45px);
        }
        .Cy_TItle1 h2 {
            font: bold 16px/40px "Microsoft YaHei";
            color: #202020;
            margin-top: 20px;
        }
        .Zy_TItle {
            padding: 10px 0;
            border-top: solid 1px #CCC;
        }
        .Zy_TItle i {
            width: 55px;
            font-size: 24px;
            color: #000000;
            text-align: center;
        }
        .Py_answer {
            padding: 20px 15px;
            font-size: 14px;
            color: #000;
        }
        .font14 {
            font-size: 14px;
        }
        .fb {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="c-header">
    <div class="headerwrap">
        <div class="c-menu">
            <div class="navhide"><span></span>功能导航</div>
            <div class="navshow">
                <ul>
                    <li><a href="#" class="current">首页</a><label id="mytaskcount"></label></li>
                    <li><a href="#">任务</a></li>
                    <li><a href="#">统计</a></li>
                    <li><a href="#">资料</a><i class="cdataTip" style="display: inline-block;"></i></li>
                    <li><a href="#">通知</a></li>
                    <li><a href="#">作业 </a><i class="workTip"></i></li>
                    <li><a href="#">考试 </a><i class="testTip"> </i></li>
                    <li><a href="#">讨论</a></li>
                </ul>
            </div>
        </div>
        <h1>
	<span title="${NowHomeWork.homework_name}">
	<a href="#">
        ${NowHomeWork.homework_name}
    </a></span>
        </h1>
    </div>
</div>
<div class="ZyTop" style="position:relative;border:none;padding:0px;">
    <p clsdd="fl" style="font-size:14px;">
        <img src="#" width="24" height="24" class="headimages fl">&nbsp;&nbsp;
        <span>姓名：<i style="color:#333;">${User.user_name}</i></span>&nbsp;&nbsp;
        <span><c:choose>
            <c:when test="${User.user_type eq 2}">老师</c:when>
            <c:otherwise>班级：${User.user_cls}</c:otherwise>
        </c:choose></span>
    </p>
    <h2>
        <span>已交人数:</span><span>${homeworkOK}</span><span>/</span>
        <span>${AllStudent}</span>
    </h2>
</div>
<a style="color: #2e6da4;text-decoration: none" href="#"data-toggle="modal"
   data-target="#newTopicDialog"  >新增题目</a>
<a style="color: #2e6da4;text-decoration: none" href="#"data-toggle="modal"
   data-target="#newTopicListDialog"  >导入题目</a>
<div class="Cy_TItle1">
    <h2>一.选择题<em style="font-size:12px;font-style:normal;"></em></h2>
</div>
<c:forEach items="${Choice}" var="item">
<div class="TiMu" style="position:relative">
    <div class="Zy_TItle  clearfix">
        <p onclick="deleteTopic(${item.topic_id})" style="cursor: pointer";>删除</p>
        <div class="clearfix" style="line-height: 35px; font-size: 14px;width:870px;">
            <div style="width:80%;float:left;">${item.topic_des}（　&nbsp;）</div>
            <%--<div style="width:20%;height:100%;float:right;">--%>

            <%--</div>--%>
        </div>
    </div>
    <ul class="Zy_ulTop">
        <li class="clearfix"><i class="fl">A、</i><a href="#" class="fl" style="word-break: break-all;">${item.topic_A}</a></li>
        <li class="clearfix"><i class="fl">B、</i><a href="#" class="fl" style="word-break: break-all;">${item.topic_B}</a></li>
        <li class="clearfix"><i class="fl">C、</i><a href="#" class="fl" style="word-break: break-all;">${item.topic_C}</a></li>
        <li class="clearfix"><i class="fl">D、</i><a href="#" class="fl" style="word-break: break-all;">${item.topic_D}</a></li>
    </ul>
</div>
</c:forEach>
<div class="Cy_TItle1">
    <h2>二.填空题<em style="font-size:12px;font-style:normal;"></em></h2>
</div>
<c:forEach items="${Text}" var="item">
<div class="TiMu" style="position:relative">
    <div class="Zy_TItle clearfix">
        <p onclick="deleteTopic(${item.topic_id})" style="cursor: pointer";>删除</p>
        <div class="clearfix" style="line-height: 35px; font-size: 14px;width:870px;">
            <div style="width:80%;float:left;">
                <p><span style="font-size:14px;font-family:宋体;padding-right: 10px;">
                    ${item.topic_name}
                </span >
                    ${item.topic_des}
                 </p>
            </div>
        </div>
    </div>
    <div class="Py_answer clearfix">
        <p class="font14">我的答案：
        </p>
        <div>
            <div class="font14">
                <div style="font-size: 14px;" class="clearfix">
                    <input type="text" placeholder="${item.topic_text}">
                </div>
            </div>
            </div>
        </div>
    </div>
</c:forEach>
<div class="Cy_TItle1">
    <h2>二.文件上传题<em style="font-size:12px;font-style:normal;"></em></h2>
</div>
<c:forEach items="${Doc}" var="item">
    <div class="TiMu" style="position:relative">
        <div class="Zy_TItle  clearfix">
            <p onclick="deleteTopic(${item.topic_id})" style="cursor: pointer";>删除</p>
            <div class="clearfix" style="line-height: 35px; font-size: 14px;width:870px;">${item.topic_des}>
            </div>
            <input type="file" value="${item.topic_text}">
    </div>
    </div>
</c:forEach>





<!--添加题目 -->
<div class="modal fade" id="newTopicDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabels">新建题目</h4>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/addTopic"  method="post"  class="form-horizontal" id="new_customer_form" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="new_TopicName" class="col-sm-2 control-label">
                            题目名称
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_TopicName" placeholder="题目名称" name="topic_name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_TopicDes" class="col-sm-2 control-label">
                            题目简介
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_TopicDes" placeholder="题目简介" name="topic_des" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_TopicType" class="col-sm-2 control-label">
                            题目类型
                        </label>
                        <div class="col-sm-10" id="new_TopicType">
                           <select name="topic_type">
                               <option value="1">选择</option>
                               <option value="2">填空</option>
                               <option value="3">文件上传</option>
                           </select>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_TopicADes" class="col-sm-2 control-label">
                            选项A
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_TopicADes" placeholder="选项A" name="topic_A" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_TopicBDes" class="col-sm-2 control-label">
                            选项B
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_TopicBDes" placeholder="选项B" name="topic_B" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_TopicCDes" class="col-sm-2 control-label">
                            选项C
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_TopicCDes" placeholder="选项C" name="topic_C" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_TopicDDes" class="col-sm-2 control-label">
                            选项D
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_TopicDDes" placeholder="选项D" name="topic_D" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_TopicAnswerDes" class="col-sm-2 control-label">
                            答案
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_TopicAnswerDes" placeholder="答案" name="topic_answer" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-primary">添加题目</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<!--批量添加题目 -->
<div class="modal fade" id="newTopicListDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="ModalLabel">添加题目</h4>
            </div>
            <div class="studentList">
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>
                            <input type="checkbox" id="sal" onclick="checkAll('#box')">
                            全选
                        </th>
                        <th>题目编号</th>
                        <th>题目名字</th>
                        <th>题目详情</th>
                    </tr>
                    </thead>
                    <tbody id="box">
                    <c:forEach items="${AllTopic.rows}" var="row">
                        <tr>
                            <th><input type="checkbox"  name="topic" value=${row.topic_id} ></th>
                            <th>${row.topic_id}</th>
                            <td>${row.topic_name}</td>
                            <td>${row.topic_des}</td>
                            <td>
                                <c:if test="${row.topic_type eq 1}">选择题</c:if>
                                <c:if test="${row.topic_type eq 2}">填空题</c:if>
                                <c:if test="${row.topic_type eq 3}">文件上传题</c:if>
                            </td>
                            <td>
                                <a href="#" class="btn btn-danger btn-xs" onclick="addTopicToHomeWork(${row.topic_id})" >添加</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="col-md-12 text-right">
                    <itheima:page url="${pageContext.request.contextPath }ShowTopic" />
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addMoreTopic()">添加</button>
            </div>
        </div>
    </div>
</div>
<script>

    function addTopicToHomeWork(id) {
        $.post("${pageContext.request.contextPath}/addTopicToHomeWork",{"id":id},
            function (data) {
                if (data==="OK"){
                    alert("OK");
                    window.location.reload();
                } else {
                    alert("ERROR");
                }
            }
        )
    }
    //全选
    function checkAll(obj) {
        var AllCheckBox=document.getElementById("sal");
        var everyCheckBox=document.getElementsByName("student");
        if (AllCheckBox.checked){
            for (var i=0;i<everyCheckBox.length;i++) {
                everyCheckBox[i].checked=true;
            }
        }else {
            for (var i=0;i<everyCheckBox.length;i++) {
                everyCheckBox[i].checked=false;
            }
        }
    }

    function addMoreTopic() {
        var obj=document.getElementsByName("topic");
        var students=[];
        for (k in obj ){
            if (obj[k].checked){
                students.push(obj[k].value);
            }
        }

        var s="";
        for (var i=0;i<students.length;i++){
            s+=students[i]+"-";
        }
        console.log(s);
        console.log(typeof students[1]);
        console.log(students);
        $.post("${pageContext.request.contextPath}/addMoreTopicToHomeWork",{"topic":s},
            function (data) {
                if (data=="OK"){
                    alert("SUCCESS");
                    window.location.reload();
                } else {
                    alert("ERROR")
                }
            });}

    function deleteTopic(topic_id) {
        $.post("${pageContext.request.contextPath}/deleteTopicWithHomeWork",{"id":topic_id},
            function (data) {
                if (data==="OK"){
                    alert("OK");
                    window.location.reload();
                } else {
                    alert("ERROR");
                }
            }
        )
    }
</script>
</body>
</html>
