<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="js/jquery-3.5.1.js"></script>

    <title>Search</title>

    <script>
        $(document).ready(function(){

            $("#search").click(function(){
                var method = $("#select").val();
                if (method=="findByEngName")
                {
                    window.location.href="${pageContext.request.contextPath}/word/findByEngname?name="+$("#input").val()
                    // alert($("#input").val())
                }
                if (method=="findByCnName")
                {
                    window.location.href="${pageContext.request.contextPath}/word/findByCnname?name="+$("#input").val()
                }
                if (method=="chooseMethod")
                {
                    alert("请至少选择一种方式查询!")
                }
            });
        });


    </script>
</head>
<body>
<ul class="nav nav-pills nav-fill">
    <li class="nav-item">
        <a class="nav-link" href="#">单词学习</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
            <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
        </svg>搜索</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">link</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">link</a>
    </li>
</ul>
<div class="input-group" style="width: 50%;margin-left: 25%;margin-top: 2.5%">
    <input type="text" class="form-control" aria-label="Text input with dropdown button" id="input">
    <div class="input-group-append"style="width: auto">
        <select id="select">
            <option value="chooseMethod">请选择</option>
<%--           单词查询方式选择，有两种方式 根据英文名查询以及根据中文名查询 --%>
            <option value="findByEngName">按英文查找单词</option>
            <option value="findByCnName">按中文查找单词</option>
        </select>
        <button type="button" class="btn btn-info" id="search">搜索</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>