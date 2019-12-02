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


/* ---------선택된 메뉴 색상 변경-------- */
#matchMenu .menu__item-name::after,
#matchMenu .menu__item-name::before{
	background: red;
	color: red;
}

#matchMenu.menu__item::after,
#matchMenu.menu__item::before{
   	color: red;
}

#matchMenu .menu__item-name{
	color: red;
}
/* ----------------------------------- */

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
   background: black;

}
.addressB{
	color: black;
	background-color:white;
	border:2px solid black;
}
.clicked{
   color:white;
   background: black;
}

#btns{
	width: 20%;
	display: inline-block;
}

#searchTbDiv{
	width: 100%;
	height: 100%;
	margin: auto;
	padding-top: 120px;
}

#searchTable{
	width: 90%;
	height: 70%;
	margin: auto;
	padding: 10%;
	background: white;
}

#searchTable, #searchTable tr{
	background: whitesmoke;
}

.search{
	padding: 0%;
	background: whitesmoke;
}

.search h3{
	margin-top: 0px;
	margin-bottom: 10px;
}

#matchingDate{
	padding-top: 0%;
	padding-bottom: 2%;
	width: 100%;
}

#matchingDate input{
	margin-top:2%;
	border: none;
	background: white;
	width: 20%;
	margin-left:5%;
	text-align-last:center;
}

#matchingDay button{
	font-size: 15px;
	width: 10%;
	margin-left:1%;
	margin-right:1%;
	height: 8%;
	text-align: center;
	border: none;
}

#matchingTime button{
	font-size: 15px;
	width: 13%;
	margin-left:1%;
	margin-right:1%;
	height: 8%;
	text-align: center;
	border: none;
}

#matchingSystem{
	padding-top: 0%;
	padding-bottom: 2%;
}


#mSystem{
	margin-top:2%;
	width: 30%;
	border: none;
	text-align-last:center;
}


</style>
</head>
<jsp:include page = "../common/header.jsp"/>

<body>

<div id = "outer" style = "margin-top:180px;">
	
	
	<div class="ha-waypoint" data-animate-down="ha-header-show" data-animate-up="ha-header-subshow" style ="width: 90%; height:800px; margin:auto; padding-bottom:0px;">
		<div id = "searchContent" style="height:100%; width:100%; border-bottom:3px solid grey;">
			<div style = "height: 10%; border-bottom: 2px solid grey;">
				<h1 style="font-size:45px; margin-bottom: 10px; margin-top: 0px; width: 80%; display: inline-block;">팀원 모집</h1>
				<div id = "btns" style = "width: 19%;">
					<button type = "button" style = "width: 45%; height: 100%; padding: 15px; margin-right: 5%; font-size: 15px;" class="addressB">나의 매치</button>
					<button type = "button" style = "width: 45%; height: 100%; padding: 15px; font-size: 15px;" class="addressB" onclick = "goCreateMatch();">매치 생성</button>
				</div>			
			</div>

			<div id = "searchTbDiv">
				<table id = "searchTable">
					<tr>
						<td>
							<div id = "matchingDate" class = "search">
								<h3>시합 날짜</h3>
								<input type = "date" id = "sDate" value = "">부터
								<input type = "date" id = "eDate" value = "">까지
							</div>
						</td>
						<td>
							<div id = "matchingDay" class = "search">
								<h3>요일</h3>
								<button type = "button" id = "mon" class = "addressB">월</button>
								<button type = "button" id = "tue" class = "addressB">화</button>
								<button type = "button" id = "wed" class = "addressB">수</button>
								<button type = "button" id = "thu" class = "addressB">목</button>
								<button type = "button" id = "fri" class = "addressB">금</button>
								<button type = "button" id = "sat" class = "addressB">토</button>
								<button type = "button" id = "sun" class = "addressB">일</button>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div id = "matchingSystem" class = "search">
								<h3>시합 유형</h3>
								<select id = "mSystem" name = "mSystem">
									<option value = "">==선택==</option>
									<option value = "5 VS 5">5 VS 5</option>
									<option value = "6 VS 6">6 VS 6</option>
									<option value = "7 VS 7">7 VS 7</option>
									<option value = "8 VS 8">8 VS 8</option>
									<option value = "9 VS 9">9 VS 9</option>
									<option value = "10 VS 10">10 VS 10</option>
									<option value = "11 VS 11">11 VS 11</option>
								</select>
							</div>
						</td>
						<td>
							<div id = "matchingTime" class = "search">
								<h3>시간</h3>
								<button type = "button" id = "0004" class = "addressB">00~04</button>
								<button type = "button" id = "0408" class = "addressB">04~08</button>
								<button type = "button" id = "0812" class = "addressB">08~12</button>
								<button type = "button" id = "1216" class = "addressB">12~16</button>
								<button type = "button" id = "1620" class = "addressB">16~20</button>
								<button type = "button" id = "2024" class = "addressB">20~24</button>
							</div>
						</td>
					</tr>					
				</table>
			</div>
				
	

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

<script type="text/javascript">
	function goCreateMatch(){
		location.href="goCreateMatch.ma";
	}
</script>



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