<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>近期熱門遊戲介紹</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
  var msg="近期熱門遊戲推薦";
  var interval=200;
  var index=0;

  function marquee(){
  	document.myForm1.myText.value=msg.substring(index,msg.length)
  		+msg.substring(0, msg.length);
  	index++;
  	if(index>msg.length) index=0;
  	window.setTimeout("marquee();",interval);
  }
  </script>
<script>
  function GO(){
	  newWin=open();
	  newWin.location.href=document.myForm2.mySelect.options[document.myForm2.mySelect.selectedIndex].value;
	  }
  </script>
<script>
  function showClock(){
	var today=Date();
	document.myForm3.myField.value=today.toString();
	setTimeout("showClock()",1000);
	  }
  </script>
<script>
  var miliseconds=0,seconds=0;
  document.myForm3.myField2.value="0";
  function showStayTime(){
	  if (miliseconds>=9){
		  miliseconds=0;
		  seconds +=1;
		  }
	  else miliseconds +=1;
	  document.myForm3.myField2.value=seconds+"."+miliseconds;
	  setTimeout("showStayTime()",100);
	  }

  </script>
</head>
<body onload="javascript:marquee(),showClock(),showStayTime();"
	style="background-color: #84C1FF;">
	<h1>你好~會員:${Account.userName }</h1>
	<form name="myForm1">
		<input type="text" name="myText" size="30px"
			style="background-color: #84C1FF; font-size: 30px; border: solid #84C1FF;">
	</form>
	<form name="myForm3"
		style="text-align: right; position: relative; bottom: 40px;">
		<input type="text" name="myField" size="50"
			style="background-color: #84C1FF; border: solid #84C1FF;"><br>
		您的停留時間為<input type="text" name="myField2" size="5">秒
	</form>
	<script type="text/javascript" src="js/bootpag.min.js"></script>
	<div class="container">
		<ul class="nav nav-pills justify-content-end">
			<li class="nav-item"><a class="btn btn-secondary btn-sm"
				href="${pageContext.request.contextPath}/productcart">點我購買</a></li>
			<li class="nav-item"><a class="btn btn-secondary btn-sm"
				href="${pageContext.request.contextPath}/Register">註冊</a></li>
			<li class="nav-item">
				<button type="button" class="btn btn-secondary btn-sm"
					data-toggle="modal" data-target="#myModal">會員登入</button>
			</li>

			<!-- The Modal -->
			<div class="modal fade" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h1 class="h3 mb-3 font-weight-normal">登入輸入表單</h1>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<form class="form-signin" onsubmit="return check();">
								<label for="userName" class="sr-only">Email address</label> <input
									type="text" id="userName" class="form-control"
									placeholder="User Name" required autofocus><br /> <label
									for="password" class="sr-only">Password</label> <input
									type="password" id="password" class="form-control"
									placeholder="Password" required><br />
								<!--                <div class="checkbox"> -->
								<!--                    <label> -->
								<!--                        <input type="checkbox" value="remember-me"> 記住我的登入 -->
								<!--                   </label> -->
								<!--                </div> -->
								<button class="btn  btn-secondary btn-block" type="submit">登入</button>

							</form>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer"></div>

					</div>
				</div>
			</div>
		</ul>
	</div>
	<div class="row">
		<div class="col-md-4">

			<div class="card" style="width: 360px; margin-left: 20px;">
				<img class="card-img-top" src="images/img_avatar1.png" id="img1"
					alt="Product Image 1" style="width: 100%">
				<div class="card-body">
					<h4 class="card-title" id="t1">John Doe</h4>
					<p class="card-text" id="d1">Some example text some example
						text. John Doe is an architect and engineer</p>
					<!--       <a href="#" class="btn btn-secondary">See Profile</a> -->
				</div>
			</div>
		</div>
		<div class="col-md-4">

			<div class="card"
				style="width: 360px; margin-left: 5px; margin-right: 5px">
				<img class="card-img-top" src="images/img_avatar1.png" id="img2"
					alt="Product Image 2" style="width: 100%">
				<div class="card-body">
					<h4 class="card-title" id="t2">John Doe</h4>
					<p class="card-text" id="d2">Some example text some example
						text. John Doe is an architect and engineer</p>
					<!--       <a href="#" class="btn btn-secondary">See Profile</a> -->
				</div>
			</div>
		</div>
		<div class="col-md-4">

			<div class="card" style="width: 360px; margin-right: 20px">
				<img class="card-img-top" src="images/img_avatar1.png" id="img3"
					alt="Product Image 3" style="width: 100%">
				<div class="card-body">
					<h4 class="card-title" id="t3">John Doe</h4>
					<p class="card-text" id="d3">Some example text some example
						text. John Doe is an architect and engineer</p>
					<!--       <a href="#" class="btn btn-secondary">See Profile</a> -->
				</div>
			</div>
		</div>
	</div>
	<div id="div1"></div>
	<form name="myForm2">
		<p>
			選擇後前往官網<select name="mySelect" size="1">
				<option value="https://www.finalfantasyxiv.com/">ff14</option>
				<option value="https://worldofwarcraft.com/zh-tw/">wow</option>
				<option
					value="https://www.rockstargames.com/reddeadredemption2/restricted-content/agegate/form?redirect=https%3A%2F%2Fwww.rockstargames.com%2Freddeadredemption2%2Ftw&options=&locale=zh_tw">碧血狂殺2</option>
				<option
					value="https://store.steampowered.com/app/814380/Sekiro_Shadows_Die_Twice__GOTY_Edition/">隻狼</option>
				<option
					value="https://store.steampowered.com/app/374320/DARK_SOULS_III/?l=tchinese">暗黑靈魂3</option>
				<option
					value="https://store.steampowered.com/app/524220/NieRAutomata/?l=tchinese">尼爾2</option>
				<option value="https://www.monsterhunter.com/rise/hk/">魔物獵人</option>
				<option
					value="https://store.playstation.com/zh-hant-tw/product/HP0177-CUSA09614_00-ASIAPLACEHOLDER0">人中之龍</option>
				<option
					value="https://www.playstation.com/zh-hant-tw/games/ghost-of-tsushima/">對馬戰鬼</option>
			</select> <input type="button" value="GO!" onclick="javascript:GO();">
		</p>
	</form>

	<script type="text/javascript">

// 	  function gotoregister(){
// 		  $.ajaxSetup({
//               cache:false,
// 		  });
//               $.get("gotoregister",
//                       function(data){
//             	  $("#div1").html(data);
//                   }
//                  );
                 
//                 }

              
      function check(){
    	  $.ajax({
              url: "check", 
              data:{"userName":$("#userName").val(),"password":$("#password").val()},                        
              cache:false ,
              type: "GET",
              dataType: 'text',
              success: function (msg) {              	
                     alert(msg);
                     $('#myModal').modal('hide');
                     window.location.reload();
              },
              error: function (xhr, ajaxOptions, thrownError) {
                  alert(xhr.status);
                  alert(thrownError);
              }
          });
          return false;
      }
      function show(arry){   
           var picPage=0;
           if(arry.length%3==0)
               picPage=   arry.length/3;
           else
        	   picPage=   arry.length/3+1;     
           $('#page-selection').bootpag({
        	      maxVisible: 5,
        	      total: picPage
        	  }).on("page", function(event,  pgnum){
        	       display(arry , pgnum);
        	  });
           display(arry,1);
      }
      function display(arry,num){
         
          var index= (num-1)*3
    	  $("#img1").attr("src", arry[index].path);
          $("#t1").text(arry[index].productName);
          $("#d1").text(arry[index].description);
          $("#img2").attr("src", arry[index+1].path);
          $("#t2").text(arry[index+1].productName);
          $("#d2").text(arry[index+1].description);
          $("#img3").attr("src", arry[index+2].path);
          $("#t3").text(arry[index+2].productName);
          $("#d3").text(arry[index+2].description);
       }
      function start(){
    	  $.ajax({
              url: "hbpicture",                         
              cache:false ,
              type: "GET",
              dataType: 'json',
              success: function (objArry) {              	
                     show(objArry);
              },
              error: function (xhr, ajaxOptions, thrownError) {
                  alert(xhr.status);
                  alert(thrownError);
              }
          });
      }
      $(document).ready(start);
</script>
	<div id="page-selection"></div>
	<script>
/*
  $('#page-selection').bootpag({
      total: 7
  }).on("page", function(event,  num){
       $("#content").html("Event Trigger Insert content click page is "+num); // some ajax content loading...
  });
  */
  </script>
</body>
</html>