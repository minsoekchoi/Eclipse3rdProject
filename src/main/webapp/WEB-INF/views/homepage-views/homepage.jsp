<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="resources/homepage/css/homepage.css" rel="stylesheet">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-solid-rounded/css/uicons-solid-rounded.css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	crossorigin="anonymous">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-thin-straight/css/uicons-thin-straight.css'>

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipcode").value = data.zonecode;
           document.querySelector("#address").value =  data.address
        }
    }).open();
}

</script>
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function() {
    //document.getElementById("showCity").textContent="구를 선택해주세요";
    const buttons = document.querySelectorAll(".location");
	
buttons.forEach((button) => {
  button.addEventListener("click", setLoc);
});
});

	
function setVisibility() {
	  var x = document.getElementById("divOne");
	  if (x.style.display === "none") {
	    x.style.display = "flex";
	  } else {
	    x.style.display = "none";
	  }
	}

function getCategoryClimb(button){
    var pressed= button.getAttribute("data-value2");
    if (pressed == "false"){
        pressed = "true";
    }else if(pressed == "true"){
        pressed = "false";
    }
    button.setAttribute("data-value2", pressed); 
}
function showCity(){
    var y = document.getElementById("locations");
    if (y.style.display === "grid") {
    y.style.display = "none";
  } else {
    y.style.display = "grid";  
  }
}


function setLoc(event) {
var city = event.target.value +"구";
document.getElementById("showCity").textContent=city;
document.getElementById("showCity");
document.getElementById("city").value = city;
 
}

$(function() {
	$("#terms").scroll(function() {
		document.getElementById('regCheck').removeAttribute("disabled");
	});
});

</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js">

$(document).ready(function() {
    // .location 클래스를 가진 버튼들에 대해 click 이벤트 핸들러를 등록합니다.
    $('.locations').click(function() {
      // 클릭된 버튼의 value 값을 locationValue 변수에 저장합니다.
      var locationValue = $(this).val();
      // Ajax 요청을 보냅니다.
      $.ajax({
        url: 'homepage-views/roomList', // 데이터를 전송할 서버 주소
        type: 'POST', // 전송 방식
        data: {location: locationValue}, // 전송할 데이터
        success: function(response) { // 성공 시 실행할 함수
          console.log(response); // 서버에서 반환한 응답 확인
        },
        error: function(xhr, status, error) { // 실패 시 실행할 함수
          console.log(error); // 오류 메시지 확인
        }
      });
    });
  });

</script>

</head>
<body>
	<div id="wrap">
		<form method="post" action="/button_location">
			<header>
				<h3 style="text-align: center;">room making</h3>
			</header>
			<nav>
				<input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
				<label for="openSidebarMenu" class="sidebarIconToggle">
					<div class="spinner diagonal part-1"></div>
					<div class="spinner horizontal"></div>
					<div class="spinner diagonal part-2"></div>
				</label>
				<div id="sidebarMenu">
					<ul class="sidebarMenuInner">
						<li><a href="#"><i class="fi fi-sr-home">&emsp;&emsp;홈</i></a></li>
						<li><a href="#"><i class="fi fi-rr-user">&emsp;로그인</i></a></li>
						<li><a href="#"><i class="fi fi-rr-basketball">&emsp;농구</i></a></li>
						<li><a href="#"><i class="fi fi-rr-baby">&ensp;클라이밍</i></a></li>
						<li><a href="#"><i class="fi fi-rs-bowling">&emsp;볼링</i></a></li>
						<li><a href="#"><i class="fi fi-ts-racquet">&ensp;배드민턴</i></a></li>
						<li><a href="#"><i class="fi fi-rs-house-flood">&ensp;방만들기</i></a></li>
						<li><a href="#"><i class="fi fi-rr-thumbtack">&ensp;신고하기</i></a></li>
						<li><a href="#"><i class="fi fi-rr-comment-sms">&ensp;게시판</i></a></li>
					</ul>
				</div>


				<div class="option">

					<div class="dropdown1">
						<button onclick="dp_menu1()" class="button1">
							<i class="material-icons dp48">notifications</i>
						</button>

						<spacer></spacer>
						<span class="num-count">2</span>
						<div style="display: none;" id="drop-content1">
							<div class="notification-icon  right"></div>

							<div class="profile1"></div>

							<div style="float: right;">
								<div class="notification-container1">
									<input class="checkbox" type="checkbox" id="size_1"
										value="small" checked /> <label class="notification new"
										for="size_1"><em>1</em> new <a href="">guest
											account(s)</a> have been created.<i
										class="material-icons dp48 right">clear</i></label> <input
										class="checkbox" type="checkbox" id="size_2" value="small"
										checked /> <label class="notification new" for="size_2"><em>2</em>
										new <a href="">lead(s)</a> are available in the system.<i
										class="material-icons dp48 right">clear</i></label> <input
										class="checkbox" type="checkbox" id="size_4" value="small"
										checked /> <label class="notification" for="size_4"><em>3</em>
										new <a href="">calendar event(s)</a> are scheduled for today.<i
										class="material-icons dp48 right">clear</i></label> <input
										class="checkbox" type="checkbox" id="size_5" value="small"
										checked /> <label class="notification" for="size_5"><em>4</em>
										blog post <a href="">comment(s)</a> need approval.<i
										class="material-icons dp48 right">clear</i></label>

								</div>
							</div>

						</div>
					</div>

					<div class="dropdown">
						<button onclick="dp_menu()" class="button">
							<i class="fi fi-rr-user" style="font-size: 20px;"></i>
						</button>
						<spacer></spacer>
						<div style="display: none;" id="drop-content">


							<div class="profile"></div>
							<div class="notification-container">
								<input class="checkbox1" type="checkbox" id="size_1"
									value="small" checked /> <label class="notification new1"
									for="size_1"><a href="" style="color: white;">마이페이지</a></label>
								<input class="checkbox1" type="checkbox" id="size_1"
									value="small" checked /> <label class="notification new1"
									for="size_1"><a href="" style="color: white;">신청내역</a></label>
								<input class="checkbox1" type="checkbox" id="size_1"
									value="small" checked /> <label class="notification new1"
									for="size_1"><a href="" style="color: white;">개설방내역</a></label>
								<input class="checkbox1" type="checkbox" id="size_1"
									value="small" checked /> <label class="notification new1"
									for="size_1"><a href="" style="color: white;">로그아웃</a></label>


							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<ul class="breadcrumb">
						<li class="br"><a href="#">&emsp;&emsp;홈</a></li>
						<li class="br"><a href="#">로그인</a></li>
						<li class="br"><a href="#">메뉴</a></li>
						<li class="br active">현재페이지</li>
					</ul>
				</div>

			</nav>

			<script>
    

        function dp_menu(){
            let click = document.getElementById("drop-content");
            if(click.style.display === "none"){
                click.style.display = "block";
                return false
 
            }else{
                click.style.display = "none";
 
            }
        }
        function dp_menu1(){
            let click = document.getElementById("drop-content1");
            if(click.style.display === "none"){
                click.style.display = "block";
 
            }else{
                click.style.display = "none";
 
            }
        }
        function initMap() {
        	  var map = new google.maps.Map(document.getElementById('map'), {
        	    center: {lat: 37.5665, lng: 126.9780},
        	    zoom: 13
        	  });
        	}

        
    </script>




			<section>
				<div
					style="width: 1200px; height: 780px; margin: 0 auto; margin-top: 0px;">
					<p
						style="text-align: center; font-family: 'Noto Sans KR', sans-serif;">
						<모임방 개설방>
					</p>

					<table id="room" class="btn draw-border">
						<tr>
							<td class="room_name">모임명</td>

							<td colspan="3"><input type="text" name="title" size="25"
								style="height: 25px;"></td>

						</tr>
						<tr>
							<td class="room_name">카테고리</td>
							<td><select name="category_type" id="class">
									<option value="">카테고리선택</option>
									<option value="bowling">볼링</option>
									<option value="badminton">클라이밍</option>
									<option value="basketball">농구</option>
									<option value="badminton">배드민턴</option>

							</select></td>


							<td class="room_name" id="px1"
								style="left: 50px; margin-top: 20px;">인원</td>
							<td><input type="number" name="name1" min="2" max="10"
								style="width: 100px;" /></td>
						<tr>

							<td class="room_name">지역</td>
							<td>

								<button type="button" class="custom-btn-1 btn-1"
									onclick="showCity()">
									지역구 클릭<br>
								</button>&emsp;
								<div id="showCity" class="showCity" ></div>
								<input type="hidden" name="room_region" id="city">
				

								<div class="locations" id="locations">
							
									<button type="button" class="location" value="용산">용산</button>
									<button type="button" class="location" value="강남">강남</button>
									<button type="button" class="location" value="강동">강동</button>
									<button type="button" class="location" value="강북">강북</button>
									<button type="button" class="location" value="강서">강서</button>
									<button type="button" class="location" value="관악">관악</button>
									<button type="button" class="location" value="광진">광진</button>
									<button type="button" class="location" value="구로">구로</button>
									<button type="button" class="location" value="금천">금천</button>
									<button type="button" class="location" value="노원">노원</button>
									<button type="button" class="location" value="도봉">도봉</button>
									<button type="button" class="location" value="동대문">동대문</button>
									<button type="button" class="location" value="동작">동작</button>
									<button type="button" class="location" value="마포">마포</button>
									<button type="button" class="location" value="서대문">서대문</button>
									<button type="button" class="location" value="서초">서초</button>
									<button type="button" class="location" value="성동">성동</button>
									<button type="button" class="location" value="성북">성북</button>
									<button type="button" class="location" value="송파">송파</button>
									<button type="button" class="location" value="양천">양천</button>
									<button type="button" class="location" value="영등포">영등포</button>
									<button type="button" class="location" value="은평">은평</button>
									<button type="button" class="location" value="종로">종로</button>
									<button type="button" class="location" value="중구">종구</button>
									<button type="button" class="location" value="중랑">중랑</button>
								</div>


							</td>
					
							<td class="room_name">모집 장소</td>
							<td><button type="button" class="custom-btn-1 btn-1" >장소 클릭</button>
    						
    						<p><em>지도를 클릭해주세요!</em></p> 
							</td>
							
						</tr>
						
						
						<tr>
							<!--  name  , id 값들을  그 컬럼 아이디와맞춰주자 -->
							<td class="room_name">시작시간</td>
							<td><p>
									<input type="time" name="start_datetime" id="start_datetime">
								</p>
							<td class="room_name" style="text-align: center;">종료시간</td>
							<td><p>
									<input type="time" name="end_datetime" id="end_datetime">
								</p>
						</tr>
						<tr>
							<td class="room_name">모집 종료시간</td>
							<td><p>
									<input type="time" name="final_datetime" id="final_datetime">
								</p></td>


							<td class="room_name">성별</td>
							<td><input type="radio" name="gender" id="gender" value="1"
								checked>남성 <input type="radio" name="gender" id="gender"
								value="2">여성 <input type="radio" name="gender"
								id="gender" value="3">혼성
						</tr>
						<tr>
					</table>

					
					<div>
						<fieldset>
							<legend>소개</legend>

							<textarea name="room_content" id="room_content" cols="168"
								rows="10" onblur="this.value = this.value.trim()"></textarea>
						</fieldset>
					</div>
					<div class="three">
						<div class="window">
							<input type="button" value="등록" onclick="homepage_ok(this.form)"
								class="custom-btn-1 btn-1" /> <input type="reset" value="취소"
								class="custom-btn-1 btn-1" />
						</div>
					</div>
				</div>
			</section>
		</form>
			</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dce2b3b82c0dc9a7705feeccd7f8c666"></script>
<script>
var map, marker;

function initMap() {
    var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
    var mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

    map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 지도를 클릭한 위치에 표출할 마커입니다
    marker = new kakao.maps.Marker({ 
        // 지도 중심좌표에 마커를 생성합니다 
        position: map.getCenter() 
    }); 
    // 지도에 마커를 표시합니다
    marker.setMap(map);

    // 지도에 클릭 이벤트를 등록합니다
    // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
    kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        

        // 클릭한 위도, 경도 정보를 가져옵니다 
        var latlng = mouseEvent.latLng; 

        // 마커 위치를 클릭한 위치로 옮깁니다
        marker.setPosition(latlng);

        var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
        message += '경도는 ' + latlng.getLng() + ' 입니다';

        var resultDiv = document.getElementById('clickLatlng'); 
        resultDiv.innerHTML = message;

    });
}
 function openMap() {
    // 팝업창을 열고 지도를 표시합니다
    var mapWindow = window.open("", "지도", "width=500,height=500");
    // 팝업창이 열리면서 initMap() 함수를 호출하여 지도를 초기화합니다.
    mapWindow.document.write('<!DOCTYPE html><html><head><meta charset="utf-8"><title>지도</title></head><body onload="initMap()"><div id="map" style="width:100%;height:350px;"></div></body></html>');
} 
</script>




	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<div class="social-links" style="text-indent: 95px;">
						<p>친절한 고객센터 1688-4757
						<p>월요일-금요일10:00-17:00</p>
						<p>[주말/공휴일휴무]고객상담을 위한 연락처로 마케팅 제안은 정중히 사양합니다</p>



					</div>
				</div>

				<div class="footer-col1">
					<h2 style="margin-top: 22px">Social Media</h2>
					<ul class="social-icons" style="margin-top: -3px;">
						<li><a
							href="https://www.facebook.com/profile.php?id=100091363184815"
							class="social-square"><i class="fab  fa-facebook-f fa-1x"></i></a></li>
						<li><a
							href="https://www.youtube.com/channel/UCd_IGM4iCm0IUjsozb_xO8w"
							class="social-square"><i class="fab  fa-youtube fa"></i></a></li>
						<li><a href="https://www.instagram.com/neulddyaeng.o/"
							class="social-square"><i class="fab  fa-instagram fa"></i></a></li>
						<li><a href="https://blog.naver.com/tjdwosk3"
							class="social-square"><i class="fa-brands fa-line fa"></i></a></li>
					</ul>
				</div>

			</div>
		</div>
	</footer>
	<script type="text/javascript">
function homepage_ok(f) {
	var title =f.title.value;
	var name1 =f.name1.value;
	var selectElement = document.getElementById("class");
	var selectedValue = selectElement.value;
	var msg = document.querySelector('#showCity').textContent;
	var msg = document.querySelector('#showCity').textContent;
	
	
	
	if (title ==="") {
		alert("이름을 입력하세요");
		f.name.focus();
		return;
	}
	
	 if (selectedValue === "") {
		    alert("카테고리를 선택해주세요");
		    return;
		  }
	if (name1 ==="") {
		alert("인원을 입력하세요");
		f.name.focus();
		return;
	}	
	if (msg ==="") {
		alert("지역을 선택해주세요");
		return;
	}	
	if (gender ==="") {
		alert("성별을 선택해주세요");
		return;
	}	


	f.action="homepage_ok.do";
	f.submit();
}



</script>



</body>
</html>