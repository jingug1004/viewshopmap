<%--<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Spring Boot Application with JSP</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
The time on the server is ${serverTime}.01
<br>
<button id='DaumAPIButton' class="btn">DaumAPIButton</button>

<script>
    <%--var result = '${msg}';--%>
    <%--if (result == 'SUCCESS') {--%>
    <%--    alert("처리가 완료되었습니다.");--%>
    <%--}--%>
    // list(리스트)의 g/b 넘버 포맷팅 Todo: 나머지 넘버 포맷팅 해야함
    // $('.listgcnt').number(true);
    // $('.listgbcnt').number(true);
    // $('.listbcnt').number(true);
    // $('.listscnt').number(true);
    // $('.listvcnt').number(true);
    // function getUrlParams() {
    //     var params = {};
    //     window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function (str, key, value) {
    //         params[key] = value;
    //     });
    //     return params;
    // }
    $(document).ready(function () {
        // $('#idDetail').off();
        <%--var allUrlAddr = $(location).attr('href');--%>
        <%--// 헤더 게시판 카테고리 클릭--%>
        <%--$('#searchBtn01').on("click", function (event) {--%>
        <%--    self.location = "list"--%>
        <%--        + '${pageMaker.makeQuery(1)}'--%>
        <%--        + "&searchType="--%>
        <%--        + $("select option:selected").val()--%>
        <%--        + "&keyword="--%>
        <%--        + $('#keywordInputCate').val()--%>
        <%--        + "&cate="--%>
        <%--        + oParams.cate;--%>
        <%--});--%>
        <%--// 헤더에서 전체 검색 listAny--%>
        <%--$('#searchBtn02').on("click", function (event) {--%>
        <%--    self.location = "listAny"--%>
        <%--        + '${pageMaker.makeQuery(1)}'--%>
        <%--        // + "&searchType="--%>
        <%--        // + $("select option:selected").val()--%>
        <%--        + "&keyword="--%>
        <%--        + $('#keywordInputCate').val();--%>
        <%--    // + "&cate="--%>
        <%--    // + oParams.cate;--%>
        <%--});--%>
        <%--window.onload = function () {--%>
        <%--    oParams = getUrlParams();--%>
        <%--}--%>
        // 새 글 등록
        $('#DaumAPIButton').on("click", function () {
            // self.location = 'register?cate='
            //     + oParams.cate;
            <%--+ '${getQuerystring(cate)}';--%>
            self.location = 'hello';
        });
//        alert("prevSelfLocation : " + prevSelfLocation);
//        var prevSelfLocation = "";
<%--        $('#goodSort').on("click", function (event) {--%>
<%--            var criUrlParam = "&cntSortType=gc";--%>
<%--            var temp = allUrlAddr + "";--%>
<%--            if (temp.match(criUrlParam)) {--%>
<%--                return true;--%>
<%--            } else {--%>
<%--                self.location = temp + "&cntSortType=gc";--%>
<%--            }--%>
<%--        });--%>
<%--        // 실시간 인기 검색--%>
<%--        $('#realPopular').on("click", function (event) {--%>
<%--            self.location = "livePopular"--%>
<%--                + '${pageMaker.makeQuery(1)}'--%>
<%--                //                + "&searchType="--%>
<%--                //                + $("select option:selected").val()--%>
<%--                //                + "&keyword="--%>
<%--                //                + $('#keywordInputCate').val()--%>
<%--                + "&cate="--%>
<%--                + oParams.cate;--%>
<%--        });--%>
<%--        // sameColor 같은 색깔 검색--%>
<%--        $('#samePopular').on("click", function (event) {--%>
<%--            self.location = "samePopular"--%>
<%--                + '${pageMaker.makeQuery(1)}'--%>
<%--                //                + "&searchType="--%>
<%--                //                + $("select option:selected").val()--%>
<%--                //                + "&keyword="--%>
<%--                //                + $('#keywordInputCate').val()--%>
<%--                + "&cate="--%>
<%--                + oParams.cate;--%>
<%--        });--%>
<%--//        $('#dailyPopular').on("click", function (event) {--%>
<%--//            $('#liDailyPopular').append("<input type='text' id='testDatepicker' />");--%>
<%--//        });--%>
<%--        $('#gbSort').on("click", function (event) {--%>
<%--            var criUrlParam = "&cntSortType=gbc";--%>
<%--            var temp = allUrlAddr + "";--%>
<%--            if (temp.match(criUrlParam)) {--%>
<%--                return true;--%>
<%--            } else {--%>
<%--                self.location = temp + "&cntSortType=gbc";--%>
<%--            }--%>
<%--        });--%>
<%--        $('#badSort').on("click", function (event) {--%>
<%--            var criUrlParam = "&cntSortType=bc";--%>
<%--            var temp = allUrlAddr + "";--%>
<%--            if (temp.match(criUrlParam)) {--%>
<%--                return true;--%>
<%--            } else {--%>
<%--                self.location = temp + "&cntSortType=bc";--%>
<%--            }--%>
<%--        });--%>
<%--        $('#spamSort').on("click", function (event) {--%>
<%--            var criUrlParam = "&cntSortType=sc";--%>
<%--            var temp = allUrlAddr + "";--%>
<%--            if (temp.match(criUrlParam)) {--%>
<%--                return true;--%>
<%--            } else {--%>
<%--                self.location = temp + "&cntSortType=sc";--%>
<%--            }--%>
<%--        });--%>
<%--        $('#viewSort').on("click", function (event) {--%>
<%--            var criUrlParam = "&cntSortType=vc";--%>
<%--            var temp = allUrlAddr + "";--%>
<%--            if (temp.match(criUrlParam)) {--%>
<%--                return true;--%>
<%--            } else {--%>
<%--                self.location = temp + "&cntSortType=vc";--%>
<%--            }--%>
<%--        });--%>
<%--        /* 게시판 리스트에서 유저 별명을 클릭했을 때 */--%>
<%--        $('.getBoardId').on("click", function () {--%>
<%--//            event.stopPropagation();  // 이벤트버블링 방지--%>
<%--            // event.addEventListener();--%>
<%--            self.location = "../userInfo/userInfoList"--%>
<%--                + '${pageMaker.makeQuery(1)}'--%>
<%--                + "&loginid="--%>
<%--                + this.id;--%>
<%--        });--%>
<%--//        $('.get').each(function() {--%>
<%--//            alert( this.id );--%>
<%--//        });--%>
<%--        /* 전체 게시판 리스트에서 유저 별명을 클릭했을 때 */--%>
<%--        $('.getBoardIdAny').on("click", function () {--%>
<%--//            event.stopPropagation();  // 이벤트버블링 방지--%>
<%--            // event.addEventListener();--%>
<%--            self.location = "../userInfo/userInfoList"--%>
<%--                + "?page=1"--%>
<%--                + "&perPageNum=10"--%>
<%--                + "&loginid="--%>
<%--                + this.id;--%>
<%--        });--%>
<%--        /* 실시간 인기 게시판 리스트에서 유저 별명을 클릭했을 때 */--%>
<%--        $('.getBoardIdLivePopular').on("click", function () {--%>
<%--//            event.stopPropagation();  // 이벤트버블링 방지--%>
<%--            // event.addEventListener();--%>
<%--            self.location = "../userInfo/userInfoList"--%>
<%--                + "?page=1"--%>
<%--                + "&perPageNum=10"--%>
<%--                + "&loginid="--%>
<%--                + this.id;--%>
<%--        });--%>
<%--        /* 같은 칼라 게시판 리스트에서 유저 별명을 클릭했을 때 */--%>
<%--        $('.getBoardIdSamePopular').on("click", function () {--%>
<%--//            event.stopPropagation();  // 이벤트버블링 방지--%>
<%--            // event.addEventListener();--%>
<%--            self.location = "../userInfo/userInfoList"--%>
<%--                + "?page=1"--%>
<%--                + "&perPageNum=10"--%>
<%--                + "&loginid="--%>
<%--                + this.id;--%>
<%--        });--%>
    });
</script>
</body>
</html>