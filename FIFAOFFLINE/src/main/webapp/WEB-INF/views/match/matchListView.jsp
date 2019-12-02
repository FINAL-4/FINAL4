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

/* td {
  padding: 16px;
  height:170px;
  width:170px;
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
}

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
  background-color: #e3f2fd;
}
tbody tr:nth-child(4n-1) {
  background-color: #e3f2fd;
} */

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
	background: whitesmoke;
}

#searchTable{
	width: 90%;
	height: 70%;
	margin: auto;
	border: 1px solid red;
}

#matchingList{
	
}


#matchingList td{
	padding-left: 15px;
}

#matchingList h4{
	font-size: 20px;
	margin: 0px;
}

#matchingList h5{
	font-size: 18px;
	margin: 0px;
}

#matchingList h6{
	font-size: 11px;
	margin: 0px;
}

#matchingTable {
	border-bottom: 2px solid lightgrey;
	border-top: 2px solid lightgrey;
	margin-bottom: 2%;
}

#matchingTable:hover{
	border-bottom: 2px solid lightgrey;
	border-top: 2px solid lightgrey;
	background: lightgrey;
	cursor: pointer;
}


</style>
</head>
<jsp:include page = "../common/header.jsp"/>

<body>

<div id = "outer" style = "margin-top:180px;">
	
	
	<div class="ha-waypoint" data-animate-down="ha-header-show" data-animate-up="ha-header-subshow" style ="width: 90%; height:800px; margin:auto; padding-bottom:0px;">
		<div id = "searchContent" style="height:100%; width:100%; border-bottom:3px solid red;">
			<div style = "height: 10%; border-bottom: 2px solid grey;">
				<h1 style="font-size:45px; margin-bottom: 10px; margin-top: 0px; width: 80%; display: inline-block;">팀원 모집</h1>
				<div id = "btns" style = "width: 19%;">
					<button type = "button" style = "width: 45%; height: 100%; padding: 15px; margin-right: 5%; font-size: 15px;" class="addressB">나의 매치</button>
					<button type = "button" style = "width: 45%; height: 100%; padding: 15px; font-size: 15px;" class="addressB" onclick = "goCreateMatch();">매치 생성</button>
				</div>			
			</div>

			<div id = "searchTbDiv">
				<table id = "searchTable" border="1">
					<tr>
						<td>제목으로 검색</td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>					
				</table>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div class="ha-waypoint" data-animate-down="ha-header-shrink" data-animate-up="ha-header-show" style = "width: 90%; margin: auto;">
		<div id = "matchingList">
			<c:forEach var="match" items="${mList }" varStatus="status">
				<table id = "matchingTable"  style  = "height: 150px;" onclick = "goMatchDetail(${match.mId});">
					<tr style = "height: 33%;">
						<td rowspan="2" style = "width: 20%; height: 80%; text-align: center;">
							<div id = "teamLogo" style = "width: 60%; margin-left:20%; margin-right: 20%; border: 1px solid red;">
								<img alt="" src="">
							</div>
						</td>
						<td colspan="3" style = "width: 80%;"><h4>${match.mTitle }</h4></td>
					</tr>
					<tr style = "height: 33%;">
						<td style = "width: 30%;">
							<h6>장소</h6>
							<h5>${match.mLocationName }</h5>
						</td>
						<td style = "width: 30%;">
							<h6>일시</h6>
							<h5>${match.mDay }</h5>
						</td>
						<td style = "width: 20%;">
							<h6>회비</h6>
							<h5>${match.dues }원</h5>
						</td>
					</tr>
					<tr style = "height: 33%;">
						<td style = "width: 20%; text-align: center;">
							<div id = "teamInfo">
								<h5>팀이름</h5>
								<h6>팀장이름</h6>
							</div>
						</td>
						<td>
							<h6>유형</h6>
							<h5>${match.mSystem }</h5>
						</td>
						<td>
							<h6>시간</h6>
							<h5>${match.sHour }:${match.sMinute } ~ ${match.eHour }:${match.eMinute }</h5>
						</td>	
						<td>
							<h6>등록일</h6>
							<h5>${match.createDate }</h5>
						</td>	
						<td>
							<input type="hidden" name = "mId" value = "">
						</td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</div>
</div>




<script type="text/javascript">
	function goMatchDetail(mId){
		location.href="goMatchDetail.ma?mId="+mId;
	}


</script>









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