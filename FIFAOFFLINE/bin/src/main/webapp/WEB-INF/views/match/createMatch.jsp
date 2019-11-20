<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
  overflow-x: hidden;
}
#employer-post-new-job .res-steps-container .res-steps {
    width: 25%;
    text-align: center;
    float: left;
    cursor: pointer
}

#employer-post-new-job .res-steps-container .res-steps .res-step-bar {
    -webkit-border-radius: 50% !important;
    -moz-border-radius: 50% !important;
    -ms-border-radius: 50% !important;
    border-radius: 50% !important;
    background: black;	/* 선택안된 원 배경색*/
    display: inline-block;
    height: 40px;
    width: 40px;
    margin-top: 10px;
    text-align: center;
    color: white;	/* 선택안된 원 글자색*/
    padding-top: 7px;
    font-size: 20px
}

#employer-post-new-job .res-steps-container .res-steps .res-progress-title {
    text-align: center;
    font-size: 15px;
    padding-top: 10px;
    display: block
}

#employer-post-new-job .res-steps-container .res-steps .res-progress-bar {
    height: 5px;
    background: black;	/* 막대기 색 */
    width: 50%;
    margin: -22px 0 0 50%;
    float: left
}

#employer-post-new-job .res-steps-container .res-step-two .res-progress-bar, #employer-post-new-job .res-steps-container .res-step-three .res-progress-bar, #employer-post-new-job .res-steps-container .res-step-four .res-progress-bar {
    width: 100%;
    margin-left: 0%
}

#employer-post-new-job .res-steps-container .res-step-four .res-progress-bar {
    width: 50%;
    margin-right: 50%
}

#employer-post-new-job .res-step-form {
    border: 1px solid #d2d2d2;
    box-shadow: 0px 6px 4px -2px silver;
    position: absolute
}

#employer-post-new-job .res-step-form h3 {
    margin: 10px 0;
    color: black;
    font-size: 18px
}

#employer-post-new-job .res-step-form .form-horizontal label {
    font-weight: normal
}

#employer-post-new-job .res-form-two, #employer-post-new-job .res-form-three, #employer-post-new-job .res-form-four {
    left: 150%
}

#employer-post-new-job .active .res-step-bar {
    background: lightgrey !important;	/* 선택된 원 색 */
}

#employer-post-new-job .active .res-progress-title {
    color: lightgrey;	/* 선택된 글자색 */
}

.contents{

	width : 100%;
	height: 500px;
}

button,
button::after {
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
  -o-transition: all 0.3s;
	transition: all 0.3s;
}

button {
  background: none;
  border: 3px solid #fff;
  border-radius: 5px;
  color: lightgrey;
  display: block;
  font-size: 1.6em;
  font-weight: bold;
  margin: 1em auto;
  padding: 2em 6em;
  position: relative;
  text-transform: uppercase;
}

button::before,
button::after {
  background: #fff;
  content: '';
  position: absolute;
  z-index: -1;
}

button:hover {
  color: black;
  background: red;
}


.btns{
	align-items: right;
	width: 100%;
	height: 20%;
}

.btn{
	border:1px solid black;
	background:white;
	width: 100px;
	height: 50px;
  	overflow: hidden;
	float: right;
}


.btn::after {
  /*background-color: #f00;*/
  height: 100%;
  left: -35%;
  top: 0;
  transform: skew(50deg);
  transition-duration: 0.6s;
  transform-origin: top left;
  width: 0;
}

.btn:hover:after {
  height: 100%;
  width: 135%;
}
</style>
</head>
<jsp:include page = "../common/header.jsp"/>
<body>
	<div id = "title" style = "font-size: 40px; margin-top: 80px; margin-left: 5%;">매치 생성</div>
	<div id="outer" style="margin-top: 15px; border-bottom: 5px solid grey; border-top: 5px solid grey; margin-left: 5%; margin-right:5%; width: 90%; ">
		<div class="ha-waypoint" data-animate-down="ha-header-show"
			data-animate-up="ha-header-subshow"
			style="height: 730px; width: 90%; border: black; margin: auto;">

			<section id="employer-post-new-job">
				<div class="row">
					<div class="container">
						<div class="row">

							<div class="col-xs-10 col-xs-offset-1" id="container">
								<div class="res-steps-container">
									<div class="res-steps res-step-one active"
										data-class=".res-form-one">
										<div class="res-step-bar">1</div>
										<div class="res-progress-bar"></div>
										<div class="res-progress-title"
											style="width: 170px; margin: auto;">기본정보</div>
									</div>
									<div class="res-steps res-step-two" data-class=".res-form-two">
										<div class="res-step-bar">2</div>
										<div class="res-progress-bar"></div>
										<div class="res-progress-title"
											style="width: 170px; margin: auto;">장소</div>
									</div>
									<div class="res-steps res-step-three"
										data-class=".res-form-three">
										<div class="res-step-bar">3</div>
										<div class="res-progress-bar"></div>
										<div class="res-progress-title"
											style="width: 170px; margin: auto;">시간</div>
									</div>
									<div class="res-steps res-step-four"
										data-class=".res-form-four">
										<div class="res-step-bar">4</div>
										<div class="res-progress-bar"></div>
										<div class="res-progress-title"
											style="width: 170px; margin: auto;">제출</div>
									</div>
								</div>
								
								<div class="clearfix">&nbsp;</div>

								<div class="res-step-form col-md-8 col-md-offset-2 res-form-one" style = "border: 3px solid red; width: 80%; height: 570px;">
									<form class="form-horizontal">
										<div class = "contents">
										</div>
										<div class = "btns">
											<button type="button"
												class="btn btn-default btn res-btn-gray"
												data-class=".res-form-one">Next</button>
										</div>
									</form>
								</div>

								<div class="res-step-form col-md-8 col-md-offset-2 res-form-two" style = "border: 3px solid green; width: 80%; height: 570px;">
									<form class="form-horizontal">
										<div class = "contents">
										</div>
										<div class = "btns">
											<button type="button"
												class="btn btn-default btn res-btn-gray"
												data-class=".res-form-two">Next</button>
											<button type="button"
												class="btn btn-default col-xs-offset-1 btn res-btn-orange"
												data-class=".res-form-two">Back</button>
										</div>
									</form>
								</div>

								<div class="res-step-form col-md-8 col-md-offset-2 res-form-three" style = "border: 3px solid blue; width: 80%; height: 570px;">
									<form class="form-horizontal">
										<div class = "contents">
										</div>
										<div class = "btns">		
											<button type="button"
												class="btn btn-default btn res-btn-gray"
												data-class=".res-form-three">Next</button>
											<button type="button"
												class="btn btn-default col-xs-offset-1 btn res-btn-orange"
												data-class=".res-form-three">Back</button>
										</div>
									</form>
								</div>

								<div class="res-step-form col-md-8 col-md-offset-2 res-form-four" style = "border: 3px solid yellow; width: 80%; height: 570px;">
									<form class="form-horizontal">
										<div class = "contents">
										</div>
										<div class = "btns">
											<button type="button"
												class="btn btn-default btn res-btn-orange"
												data-class=".res-form-four">Back</button>
											<button type="button"
												class="btn"
												data-class=".res-form-four">Submit</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>



	<script type="text/javascript">

$(document).ready(function(){
	var steps = ['.res-step-one','.res-step-two','.res-step-three','.res-step-four'];
		var i = 1;
		
		$(".res-form-one").css("left","10%");
		
		$(".res-step-form .res-btn-orange").click(function(){
			var getClass = $(this).attr('data-class');
			$(".res-steps").removeClass('active');
			i--;
			$(steps[i-1]).addClass('active');
			$(getClass).prev().css('left','-150%')
			$(getClass).animate({
				left: '150%'
			}, 500);
			$(getClass).prev().animate({
				left: '10%'
			}, 500)
		});
		
		$(".res-step-form .res-btn-gray").click(function(){
			var getClass = $(this).attr('data-class');
			$(".res-steps").removeClass('active');
			$(steps[i]).addClass('active');
			i++;
			if(getClass != ".res-form-four"){
				$(getClass).animate({
					left: '-150%'
				}, 500, function(){
					$(getClass).css('left', '150%');
				});
				$(getClass).next().animate({
					left: '10%'
				}, 500, function(){
					$(this).css('display','block');
				});
			}
		});



		/* click from top bar steps */
		$('.res-step-one').click(function(){
			if(!$(this).hasClass('active')){
				$(".res-steps").removeClass('active');
				i = 0;
				$(steps[i]).addClass('active');
				i++;
				$('.res-form-one').css('left','-150%');
				$('.res-form-two, .res-form-three, .res-form-four').animate({
					left: '150%'
				}, 500);
				$('.res-form-one').animate({
					left: '10%'
				}, 500);
			}
		});

		$('.res-step-two').click(function(){
			if(!$(this).hasClass('active')){
				$(".res-steps").removeClass('active');
				i = 1;
				$(steps[i]).addClass('active');
				i++;
				$('.res-form-two').css('left','-150%');
				$('.res-form-one, .res-form-three, .res-form-four').animate({
					left: '150%'
				}, 500);
				$('.res-form-two').animate({
					left: '10%'
				}, 500);
			}
		});

		$('.res-step-three').click(function(){
			if(!$(this).hasClass('active')){
				$(".res-steps").removeClass('active');
				i = 2;
				$(steps[i]).addClass('active');
				i++;
				$('.res-form-three').css('left','-150%');
				$('.res-form-one, .res-form-two, .res-form-four').animate({
					left: '150%'
				}, 500);
				$('.res-form-three').animate({
					left: '10%'
				}, 500);
			}
		});

		$('.res-step-four').click(function(){
			if(!$(this).hasClass('active')){
				$(".res-steps").removeClass('active');
				i = 3;
				$(steps[i]).addClass('active');
				i++;
				$('.res-form-four').css('left','-150%');
				$('.res-form-one, .res-form-two, .res-form-three').animate({
					left: '150%'
				}, 500);
				$('.res-form-four').animate({
					left: '10%'
				}, 500);
			}
		});
	});

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
			} );
	</script>
<jsp:include page = "../common/footer.jsp"/>
</body>
</html>