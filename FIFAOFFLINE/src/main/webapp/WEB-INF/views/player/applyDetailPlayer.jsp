<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#playerMenu .menu__item-name::after,
#playerMenu .menu__item-name::before{
   background: red;
}
#playerMenu.menu__item::after,
#playerMenu.menu__item::before{
   color: red;
}
#picture{
	width : 300px;
	height : 350px;
	margin-top : 50px;
}
#pictureContent{
	font-size:2.4em;
	font-weight: bold;
	margin-top : 30px;
	margin-left: 100px;
}
#detailContent{
	margin-left:150px;
	margin-top: 50px;
	font-size:2em;
}
td{
	border-bottom: 0 solid white;
}
</style>
</head>
<jsp:include page = "../common/header.jsp"/>
<body>
<div id = "title" style = "font-size: 40px; margin-top: 80px; margin-left: 5%;"> 리스트 상세보기 </div>
<div id="content" style="margin-top: 15px; border-bottom: 5px solid grey; border-top: 5px solid grey; margin-left: 5%; margin-right:5%; width: 90%; ">
	<div class="ha-waypoint" data-animate-down="ha-header-show" data-animate-up="ha-header-subshow" style="height: 730px; width: 90%; border: black; margin: auto;">
			<!-- <div id = picture> 
				<h1> 팀 로고 or 사람 사진 넣기 </h1>
			</div>
			<div id = pictureName>
				<table align=center>
					<td style = "font-size:2.5em; font-weight: bold;"> 팀 이름 받아오기 </td>
				</table>
			</div>

			<form>
				<table id = detailContent align=center>
					<td> 팀 장 : </td>
					<td> 팀장 이름 받아오기 </td>
				</table>
				<label> 팀장 :  </label>
				<label> 팀장 이름 받아오기 </label>
			</form> -->
		<form>
		<div style = "float:left;"> 
		<table align = center id = pictureContent>
			<tr>
				<img id = "picture" src="resources/images/logo.png"> 
				<td> 팀 이름 박기 </td>
			</tr>
		</table>
		</div>
		
		<div style = "float:left;">
		<table align = center id = detailContent> 
			<tr>
				<td> · 팀 장 : </td>
				<td> 팀장 이름 받아오기 </td>
			</tr>
			<tr>
				<td> · 사용 경기장 : </td>
				<td> 경기장 받아오기 </td>
			</tr>
			<tr>
				<td> · 팀원 수 or 매치 </td>
				<td> 인원 받아오기 </td>
			</tr>
			<tr>
				<td> · 모집내용 </td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;&nbsp;모집내용받아오기</td>
			</tr>
		</table>
		</div>
		</form>
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
	} );
</script>

<jsp:include page = "../common/footer.jsp"/>
</body>
</html>