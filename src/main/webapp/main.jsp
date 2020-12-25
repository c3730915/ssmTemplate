<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-US">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap-4.5.0-dist/css/bootstrap-grid.min.css">
    <title>main</title>
    <style>
        [class^="col"]{
            border: 1px solid #ccc;
        }
    </style>


</head>
<body>
<div class="container">
    <ul class="nav nav-pills nav-fill"style="visibility:hidden">
        <li class="nav-item">
            <a class="nav-link active" href="#">单词学习</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">搜索</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
    </ul>
    <div class="row" style="height: 600px">
        <div class="col-lg-6">
            <div style="margin-top:50px ">
                <div style="text-align: center;margin-top: 5%">
                    <h1>Example heading <span class="badge badge-secondary">ID</span></h1>
                    <h3>音标 <button type="button" class="btn btn-default" aria-label="Left Align">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-volume-up-fill" viewBox="0 0 16 16">
                            <path d="M11.536 14.01A8.473 8.473 0 0 0 14.026 8a8.473 8.473 0 0 0-2.49-6.01l-.708.707A7.476 7.476 0 0 1 13.025 8c0 2.071-.84 3.946-2.197 5.303l.708.707z"/>
                            <path d="M10.121 12.596A6.48 6.48 0 0 0 12.025 8a6.48 6.48 0 0 0-1.904-4.596l-.707.707A5.483 5.483 0 0 1 11.025 8a5.483 5.483 0 0 1-1.61 3.89l.706.706z"/>
                            <path d="M8.707 11.182A4.486 4.486 0 0 0 10.025 8a4.486 4.486 0 0 0-1.318-3.182L8 5.525A3.489 3.489 0 0 1 9.025 8 3.49 3.49 0 0 1 8 10.475l.707.707z"/>
                            <path fill-rule="evenodd" d="M6.717 3.55A.5.5 0 0 1 7 4v8a.5.5 0 0 1-.812.39L3.825 10.5H1.5A.5.5 0 0 1 1 10V6a.5.5 0 0 1 .5-.5h2.325l2.363-1.89a.5.5 0 0 1 .529-.06z"/>
                        </svg>
                    </button></h3>
                </div>
                <div style="text-align: center">
                    <span class="badge badge-pill badge-primary">CET4</span>
                    <span class="badge badge-pill badge-success">CET6</span>
                    <span class="badge badge-pill badge-warning">中考</span>
                    <span class="badge badge-pill badge-danger">高考</span>
                    <span class="badge badge-pill badge-info">托福雅思</span>
                </div>
            </div>
        </div>
        <div lang="" class="col-lg-6">
            <div style="margin-top: 5%" class="alert alert-info" role="alert">
                <p>汉语解释</p>
            </div>
            <div style="margin-top: 5%" class="alert alert-success" role="alert">
                <p> works with this kind of content.</p>
            </div>
            <div  style="margin-top: 5%;word-break: break-all;hyphens: manual" class="alert alert-warning" role="alert" >
                <p>时态变换</p>
            </div>
            <div style="margin-top: 30px">
                <table style="margin: auto;"  width="90%">
                    <td><button style="height: 90%;width: 100%;"  type="button" class="btn btn-success" >认  识</button></td>
                    <td><button style="height: 90%;width: 100%"  type="button" class="btn btn-warning">模  糊</button></td>
                    <td><button style="height: 90%;width: 100%"  type="button" class="btn btn-danger">忘  记</button></td>
                </table>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12" style="height: 30px">
            <div class="progress" style="height: 20px;">
                <div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
            </div>
        </div>
    </div>
    <div style="margin-left: 30%;margin-top: 3%">
        <nav aria-label="..." >
            <ul class="pagination">
                <li class="page-item disabled">
                    <span class="page-link">Previous</span>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item active" aria-current="page">
                        <span class="page-link">
                            2
                        <span class="sr-only">(current)</span>
                        </span>
                </li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>
    </div>
<!--        <div>-->
<!--            <nav aria-label="..." style="margin-left: 20%;margin-top: 3%">-->
<!--                <ul class="pagination">-->
<!--                    <li class="page-item disabled">-->
<!--                        <span class="page-link">Previous</span>-->
<!--                    </li>-->
<!--                    <li class="page-item"><a class="page-link" href="#">1</a></li>-->
<!--                    <li class="page-item active" aria-current="page">-->
<!--                        <span class="page-link">-->
<!--                            2-->
<!--                        <span class="sr-only">(current)</span>-->
<!--                        </span>-->
<!--                    </li>-->
<!--                    <li class="page-item"><a class="page-link" href="#">3</a></li>-->
<!--                    <li class="page-item">-->
<!--                        <a class="page-link" href="#">Next</a>-->
<!--                    </li>-->
<!--                </ul>-->
<!--            </nav>-->
<!--        </div>-->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>