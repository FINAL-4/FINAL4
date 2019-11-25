<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}

/* Style the search field */

.teamsearchB:hover {
  background: #0b7dda;
}

/* Clear floats */
.example::after {
  content: "";
  clear: both;
  display: table;
}
/* .example{
	float:right;
} */
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  /* border: 1px solid #ddd; */
  /* border-top: 1px solid #444444; */

}

td {
  padding: 16px;
  height:170px;
  width:170px;
  /* border-bottom: 1px solid #444444; */
  font-size:20px;
  text-align:center;
  align:center;

}

th {
	padding:16px;
	height:65px;
	font-weight:bold;
	font-size:22px;
	text-align:center;
	align:center;
	/* border-bottom: 1px solid #444444; */
}

/* .teamtest{
	text-align:center;
	align:center;
} */

/* tr{
  background-color:#F2FF9D;
  cursor:pointer;
} */

.timgtag{
	display:inline-block;
	padding-left:10px;
}

thead th {
    background-color: #0d47a1;
    color:white;
}

thead tr {
  background-color: #0d47a1;
  color: #ffffff;
}
tbody tr:nth-child(4n-3) {
  /* background-color: #bbdefb; */
  background-color: #e3f2fd;
}
tbody tr:nth-child(4n-1) {
  background-color: #e3f2fd;
}

#teamMenu .menu__item-name::after,
#teamMenu .menu__item-name::before{
	background: red;
}

#teamMenu.menu__item::after,
#teamMenu.menu__item::before{
   	color: red;
}

.teamselector:hover{
	background-color:#8EA8DB;
	cursor:pointer;
}
.spacetr{
	height:80px;
}
hr.new4 {
  border: 1px solid red;
}
.searchInfo{
	text-align:right;
	margin-bottom:0px;
	padding-right:150px;
	font-size:16px;
	margin-right:60px;
}
/* .searchButtons{
	padding-top:300px;
} */
.searchBInfo{
	/* text-align:left; */
	margin-bottom:0px;
	font-size:20px;
	padding-left:375px;
	padding-top:300px;
	padding-bottom:10px;
}
.addressB:hover{
   color:white;
   background: #2AF08E;

}
.addressB{
	background-color:white;
	border:1px solid black;
	border-radius:13px;
}
.clicked{
   color:white;
   background: #2AF08E;
}
</style>
</head>
<jsp:include page = "../common/header.jsp"/>

<body>

<div id = "outer" style = "margin-top:180px;">
	<div class="ha-waypoint" data-animate-down="ha-header-show" data-animate-up="ha-header-subshow" style ="width: 90%; height:800px; margin:auto; padding-bottom:50px;">
		<div style="height:100%; width:100%; border-bottom:3px solid red;">
			<div class="example">
			<br><br><br>
				<p class="searchBInfo">지역으로 검색하세요.</p>
				<div class="searchButtons">
					<button style="width:200px; margin-left:50px;" class="addressB">역삼/개포/청담</button>
					<button style="width:200px;" class="addressB">삼성/대치/신사</button>
					<button style="width:200px;" class="addressB">논현/압구정/세곡</button>
					<button style="width:200px;" class="addressB">자곡/율현/일원</button>
					<br>
					<button style="width:200px; margin-left:50px;" class="addressB">수서/도곡/대치1</button>
					<button style="width:200px;" class="addressB">대치2/대치4/역삼1</button>
					<button style="width:200px;" class="addressB">역삼1/역삼2/도곡1</button>
					<button style="width:200px;" class="addressB">도곡2/개포/일원본</button>
				</div>	
			
				<p class="searchInfo">팀명으로 검색하세요</p>
				<br>
  				<button class="teamsearchB" style="width:75px; float:right; margin-top:8px; margin-bottom:8px; margin-right:50px; height:60px;"><i class="fa fa-search"></i></button>
  				<input type="text" placeholder="팀 이름으로 검색하세요." class="searchTeamName" style="width:400px; float:right;">
  			</div>
  			
			<h1 style="font-size:48px;">&nbsp;&nbsp;팀원 모집</h1>
		</div>
	</div>
	<div class="ha-waypoint" data-animate-down="ha-header-shrink" data-animate-up="ha-header-show" style = "width: 90%; margin: auto;">
		<table>
			<thead>
			<tr>
				<th class="teamtest">팀 로고</th>
				<th class="teamtest">팀 명</th>
				<th class="teamtest">팀장이름</th>
				<th class="teamtest">활동지역</th>
				<th class="teamtest">팀 소개</th>
				<th class="teamtest">모집 인원 수</th>
			</tr>
			</thead>
			
			<%-- <c:forEach var="name" items="${nameList}" varStatus="status">
    			<p>${status.count} : <c:out value="${name}" /></p>
			</c:forEach> --%>
			<tbody>
			<%for(int i=1; i<11; i++) {%>
  			<tr class="teamselector" onclick="tdetail(<%=i%>);">
			    <td class="teamtest">
			    	<div style="height:100%; width:80" class="Timgtag">
			    		<input type="hidden" value="<%=i%>" class="hiddenTno<%=i%>">
			    		<img src="<%=request.getContextPath()%>/resources/images/logo.png" style="width:100%; height:100%; padding-left:25px;">
			    	</div>
			    </td>
			    <td class="teamtest">contents1</td>
			    <td class="teamtest">contents2</td>
			    <td class="teamtest">contents3</td>
			    <td class="teamtest">contents4</td>
			    <td class="teamtest">contents5</td>
  			</tr>
  			<tr class="spacetr"></tr>
  			<% }%>
  			</tbody>
		</table>
	</div>
</div>
<script>
	var $head = $( '#ha-header' );
	$( '.ha-waypoint' ).each( function(i) {
		var $el = $( this ),
			animClassDown = $el.data( 'animateDown' ),
			animClassUp = $el.data( 'animateUp' );
	
		$el.waypoint( function( direction ) {
			if( direction === 'down' && animClassDown ) {
				$head.attr('class', 'ha-header ' + animClassDown);
			}
			else if( direction === 'up' && animClassUp ){
				$head.attr('class', 'ha-header ' + animClassUp);
			}
		}, { offset: '100%' } );
	});
</script>
<script>
	function tdetail(id){
		alert($(".hiddenTno"+id).val());
	}
</script>
<script>
	$(document).ready( function() {
		$(".addressB").click(function(){
			$(this).toggleClass('clicked');
		});
	});
</script>

<jsp:include page = "../common/footer.jsp"/>
</body>
</html>