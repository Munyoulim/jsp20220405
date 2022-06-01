<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	

<style type="text/css">
 
    *{
        margin: 5px;
        padding: 5px;
    }
    #map{
        border: 2px solid blue;
        width: 500px;
        height: 300px;
    }
 
</style>

<script src="http://maps.google.com/maps/api/js?key=AIzaSyAkqmdkBcl1u6Mto3uwULChkbN9-92tiWg&region=kr"></script>

<title>Insert title here</title>
</head>
<body>
	<div id="map"></div>
    <button id="btn1">지도 변경1</button>
    <button id="btn2">지도 변경2</button>
    <button id="btn3">거리뷰</button>
    
    <script type="text/javascript">
        
        // 버튼들 불러와서 변수에 담아주고
        var btn1 = document.getElementById("btn1");
        var btn2 = document.getElementById("btn2");
        var btn3 = document.getElementById("btn3");
        // 각각 버튼에 이벤트 추가
        btn1.addEventListener("click", changeMap1);
        btn2.addEventListener("click", changeMap2);
        btn3.addEventListener("click", changeMap3);
        
    
        var map;
        // 지도 출력
        function initMap(){
            // 위치데이터 경도, 위도로 구성된 jso 파일은 항상 이런식으로 구성되어있다.
            var ll = {lat: 37.500624, lng: 127.036268};
            map = new google.maps.Map(
                    document.getElementById("map"),
                    {zoom: 17, center: ll}
                    );
            new google.maps.Marker(
                {position: ll,
                    map: map,
                    label: "현재 위치"}        
            );
        }
        initMap(); // 맵 생성
        
        // 지도의 중심을 변경하는 작업
        function changeMap1(){
            var ll = {lat:35.661625, lng: 125.239803};
            map.panTo(ll);
            map.setZoom(16);
        } 
        // 새로운 지도를 여는 작업 -> 마커 지워짐
        function changeMap2(){
            var ll = {lat:-40.339098, lng: 175.609729};
            map = new google.maps.Map(
                    document.getElementById("map"),
                    {zoom:17, center: ll}
                    );
        }
        // 거리뷰를 새창으로 보여주는 작업
        function changeMap3(){
            window.open('pano.html','',width=300,height=300);
        }
    </script>
</body>
</html>


















