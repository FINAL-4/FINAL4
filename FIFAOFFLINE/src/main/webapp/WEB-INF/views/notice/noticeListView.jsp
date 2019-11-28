<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
     table{
      border-top: 2px solid black; 
      border-bottom: 2px solid black; 
      border-spacing:0px;
      width:98%;
   }
   th{
      height: 30px;
      font-size: 12px;
      border-right: 2px solid white;
     
   }
   
   tr{
      font-size: 11px;
      height: 30px;
      
   } 

   td{
    border-bottom: 1px solid lightgray;
   }

   thead{
      background: #EAEAEA;
      
   }
   
   /* place holder 감추기*/
   input:focus::-webkit-input-placeholder, textarea:focus::-webkit-input-placeholder { /* WebKit browsers */ color:transparent; } 
   input:focus:-moz-placeholder, textarea:focus:-moz-placeholder { /* Mozilla Firefox 4 to 18 */ color:transparent; } 
   input:focus::-moz-placeholder, textarea:focus::-moz-placeholder { /* Mozilla Firefox 19+ */ color:transparent; } 
   input:focus:-ms-input-placeholder, textarea:focus:-ms-input-placeholder { /* Internet Explorer 10+ */ color:transparent; }

   #searchDiv input{
      
      width: 450px; 
      height: 40px;
   }

    #outer{
       width: 100%;
       border:none;
       padding: 10px;
       position: relative;
    }



	::-webkit-scrollbar {
	
		display:none;
		
	}

	#listcountDiv{
		border:none;
		width: 200px;
		height: 50px;
		position: relative;
		font-size: 16px;
	  	display: inline-block;
	  	padding-left: 30px;
	  	padding-top:6px;
	}
    #searchDiv{
       width: 600px;
       height: 50px;
       border:none;
       display: inline-block;
       float: right; 
     }

	

   #tableDiv{
      border: none;
      position: relative;
      width: 1300px;
      padding:10px;
      margin: auto;
   }
   
.searchBtn{

   outline:none;

}

.balloon {
    display: none;
    position: absolute;
    background: white;
    width: 250px;
    margin: auto;
    border: 1px solid gray;
    right: 400px;
    font-size: 14px; 
    padding: 10px;
    text-align: left; 

}
 .balloon:after {
    content: '';
    position: absolute;
    border-top: 5px solid transparent;
    border-right: 5px solid transparent;
    border-left: 12px solid white;
    border-bottom: 5px solid transparent;
    top: 18px;
    left: 270px;
}

 .balloon:before {
    content: '';
    position: absolute;
    border-top: 5px solid transparent;
    border-right: 5px solid transparent;
    border-left: 13px solid gray;
    border-bottom: 5px solid transparent;
    top: 18px;
    left: 271px;
} 

.balloonClose{

   margin: 0px; 
   pdding: 1px;
   position: absolute;
   bottom: 10px; 
   right: 10px;
   cursor:pointer;
}

.attachmentP{
   position: relative;
   margin: auto;
   padding: auto;
   padding-bottom:5px;
   word-wrap: break-word;
		
}

    
.balloonClose:hover{
   cursor:pointer;
}
  
 .attachment:hover{
   cursor:pointer;
} 

.clip:hover{
cursor:pointer;
}

.attachmentP:hover{
cursor:pointer;
text-decoration: underline;
}

.clipDiv{
   padding-top: 18px;
   width: 40px;
   height: 35px;
   align: center;
   text-align:center;
}   

#writerBtn{
   border:none;
   outline: none;
   background-color: black; 
   color: white;
   font-size: 16px;
   height: 40px;
   width: 70px;
   position: absolute;
   right: 35px;
   bottom: 37px;
}

#writerBtn:hover{
   background-color: #f53f29; 
   color: white;
   cursor: pointer;
}

.searchBtn{
background-color: black;
position: absolute;
right: 18px;
}

.searchBtn:hover{
background-color: #f53f29;
cursor: pointer;

}

#saveId{
	position: absolute;
	left:174px;
	top:159px;
	margin: 0px;
	padding: 0px;
}


select{
   font-size: 14px;
   position: absolute;
   right: 536px;
   border: 1px solid lightgray;
}

option{
   font-size: 14px;
}

#searchDiv input{
   font-size: 14px;
   position: absolute;
   right: 76px
}

.lisCountSpan{
	color: #f53f29;
}

.titleDiv1{
	border:none;
	border-bottom: 1px solid darkgray;
	position: relative;	
	width:1230px;
	height:100px;
	margin-left:auto;
	margin-right:auto;
	align: center;
}

.titleDiv2{
	position: relative;
	width: 240px;	
	font-size: 45px;
	margin-left:auto;
	margin-right:auto;
}

.pagingArea{
	position: relative;
	top:10px;

}
.superTr:hover{
	font-weight: bold;
}

#new {
	font-size: 13px;
	font-weight: bold;
	background: #ffca0b;
	border-radius: 4px;
	padding: 2px;
	margin-left:7px;
}

.pagingArea button {
	  border: none;
	  outline: none;
	  padding: 10px 16px;
	  background-color: #f1f1f1;
	  cursor: pointer;
	  font-weight: bold;
	  font-size: 15px;
}

.pagingArea button:hover {
	  background-color: #666;
	  color: white;
}


#boardImg1{
	position: relative;	
	width:100%;
	height:300px;
	margin-left:auto;
	margin-right:auto;
	align: center;
	text-align: center;
	background: black;
}
</style>

</head>
	<jsp:include page="../common/header.jsp"/>	
<body>
	<div id = "outer" style = "margin-top: 180px;">
			<div class="ha-waypoint" data-animate-down="ha-header-show" data-animate-up="ha-header-subshow" style ="width: 90%; margin: auto;">
		<div style="height:100%; width:100%; border-bottom:3px solid red;">
			<div class="example">
			<br><br><br>
		</div>
			</div>
			<br>
			<div class="ha-waypoint" data-animate-down="ha-header-shrink" data-animate-up="ha-header-show" style = "height: 1200px; width: 90%;  margin: auto;">
			<div align="center">


	
	<br><br>
	
<%-- 	<c:if test="${!empty loginUser }">
		<div align="center">
			<button onclick="location.href='nWriterView.do'">글쓰기</button>	
			<h1 align="center">공지글 목록 보기</h1>
		</div>
	</c:if> --%>
	<br>
	<button onclick="location.href='nWriterView.do'" style="width:98%;" >글쓰기</button>		
	<table align="center" width="600" border="1" cellspacing="0" style="clear:right;" id="td">
		<tr>
         <th width="100px">번 호</th>
         <th width="600px">제 목</th>
         <th width="150px">작성자</th>
         <th width= "100px">첨부</th>
         <th width="100px">조회수</th>
         <th width="180px">작성일</th>
       </tr>
	
		<c:forEach var="n" items="${list }">
			<tr>
				<td align="center">${n.nId }</td>
				<td>
					<c:if test="${!empty loginUser }">
						<c:url var="ndetail" value="ndetail.do">
							<c:param name="nId" value="${n.nId }"/>
						</c:url>
						<a href="${ndetail }">${n.nTitle }</a>
					</c:if>
					<c:if test="${empty loginUser }">
						${n.nTitle }
					</c:if>
				</td>
				
				<td align="center">${n.nWriter }</td>
				<td align="center">
					<c:if test="${!empty n.filePath }">
						★
					</c:if>
					<c:if test="${!empty n.filePath }">
						&nbsp;
					</c:if>
				<td align="center">${n.nCount }</td>
				<td align="center">${n.nCreateDate }</td>

				</td>
			</tr>
		</c:forEach>

	</table>
			<!-- 페이징 부분 -->
 			<tr align="center" height="20">
 				<td colspan="6">
	 				<!-- [이전] -->
	 				<c:if test="${pi.currentPage == 1 }">
	 					[이전]&nbsp;
	 				</c:if>
	 				
	 				<c:if test="${pi.currentPage > 1 }">
	 					<c:url var="nlistBack" value="/selectList.do">
	 						<c:param name="Page" value="${pi.currentPage - 1 }"/>
	 					</c:url>
	 					<a href="${nlistBack }">[이전]</a>
	 				</c:if>
	 				
	 				<!-- [번호들] -->
	 				<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
	 					<c:if test="${p eq pi.currentPage }">
	 						<font color="red" size="4"><b>[${p}]</b></font>
	 					</c:if>
	 					
	 					<c:if test="${p ne pi.currentPage }">
	 						<c:url var="nlistCheck" value="nList.do">
	 							<c:param name="Page" value="${p }"/>
	 						</c:url>
	 						<a href="${nlistCheck }">${p }</a>
	 					</c:if>
	 				</c:forEach>
	 				
	 				<!-- [다음] -->
	 				<c:if test="${pi.currentPage == pi.maxPage }">
	 					&nbsp;[다음]
	 				</c:if>
	 				
	 				<c:if test="${pi.currentPage < pi.maxPage }">
	 					<c:url var="nlistEnd" value="nlist.do">
	 						<c:param name="Page" value="${pi.currentPage + 1 }"/>
	 					</c:url>
	 					<a href="${nlistEnd }">&nbsp;[다음]</a>
	 				</c:if>
 				</td>
 			</tr>
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
<jsp:include page="../common/footer.jsp"/>	
	
</body>
</html>