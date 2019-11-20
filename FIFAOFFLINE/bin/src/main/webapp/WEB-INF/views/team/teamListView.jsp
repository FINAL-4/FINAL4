<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
  border-top: 1px solid #444444;

}

td {
  padding: 16px;
  height:170px;
  width:170px;
  border-bottom: 1px solid #444444;
  font-size:20px;

}

th {
	padding:16px;
	height:65px;
	font-weight:bold;
	font-size:22px;
	border-bottom: 1px solid #444444;
}

.teamtest{
	text-align:center;
	align:center;
}

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
    background-color: #bbdefb;
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
	background-color:purple;
	cursor:pointer;
}
.spacetr{
	height:20px;
}
</style>
</head>
<jsp:include page = "../common/header.jsp"/>

<body>

<div id = "outer" style = "margin-top: 20px;">
	<div class="ha-waypoint" data-animate-down="ha-header-show" data-animate-up="ha-header-subshow" style ="width: 90%; margin:auto;">
		<div style="height:800px; width:100%; background:skyblue; margin-top:200px;">
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
				<th class="teamtest">모집 광고글</th>
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

<jsp:include page = "../common/footer.jsp"/>
</body>
</html>