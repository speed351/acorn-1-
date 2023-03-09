<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div class="header_inner" style="border : 1px solid #ededed">
		<div class="sm_menu">
			<img src="${pageContext.request.contextPath}/resources/images/hidden_menu.png" alt="" />
		</div>
		<c:choose>
			<c:when test="${ empty sessionScope.id}">
				<a href="${pageContext.request.contextPath}/" class="logo_text">
					<p class="cloud_effect">FOOD CLOUD</p>
				</a>
				<div class="top_menu">
					<div id="simple-list-example" class="top_nav simple-list-example-scrollspy">
						<a href="#simple-list-item-1">TOP</a>
						<a href=${param.thisPage eq "index" ? "#simple-list-item-2" : "../shop/list" } id="category">CATEGORY</a>
						<c:if test="${param.thisPage eq 'index' }">
							<a href="#simple-list-item-3" id="hot_place">HOT PLACE</a>
						</c:if>
						<a href=${param.thisPage eq "index" ? "#simple-list-item-4" : "../statistics/statistics"  } id="research">RESEARCH</a>
    		    </div>
					<div class="search_menu">
						<div class="search_bar">
							<form action="${pageContext.request.contextPath}/search/search"
								method="post">
								<div class="search_box">
									<button type="submit" style="display: contents">
										<img class="search_img"
											src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
											alt="" />
									</button>
									<input class="search_input" type="text" name="keyword"
										value="${keyword}" placeholder="검색어 입력...">
								</div>
							</form>
						</div>
					</div>
					<div class="top_user">
					<a href="${pageContext.request.contextPath}/users/signup_form"  class="sign_up btn btn-outline-success">SIGN-UP</a>
						<a id="login" href="javascript:"  class="login btn btn-outline-dark">LOGIN</a>
					</div>
				</div>
			</c:when>
			<c:when test="${sessionScope.id eq 'admin'}">
				<a href="${pageContext.request.contextPath}/" class="logo_text">
					<p class="cloud_effect">FOOD CLOUD</p>
				</a>
				<div class="top_menu">
						<div id="simple-list-example" class="top_nav simple-list-example-scrollspy">
						<a href="#simple-list-item-1">TOP</a>
						<a href=${param.thisPage eq "index" ? "#simple-list-item-2" : "../shop/list" } id="category">CATEGORY</a>
						<a href=${param.thisPage eq "index" ? "#simple-list-item-4" : "../statistics/statistics" } id="research">RESEARCH</a>
            </div>
            <div class="search_menu">
              <div class="search_bar">
                <form action="${pageContext.request.contextPath}/search/search"
                  method="post">
                  <div class="search_box">
                    <button type="submit" style="display: contents">
                      <img class="search_img"
                        src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
                        alt="" />
                    </button>
                    <input class="search_input" type="text" name="keyword"
                      value="${keyword}" placeholder="검색어 입력...">
                  </div>
                </form>
              </div>
            </div>
			<div class="top_user">
				<a href="${pageContext.request.contextPath}/users/info" class="user_menu rainbow_effect user_menu badge">${sessionScope.id }</a>
				<a id="logout" href="javascript:" class="logout_menu btn btn-outline-danger" style="padding-top:0px;">LOGOUT</a>
			</div>
				</div>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/" class="logo_text">
					<p class="cloud_effect">FOOD CLOUD</p>
				</a>
				<div class="top_menu">
					<div id="simple-list-example" class="top_nav simple-list-example-scrollspy">
						<a href="#simple-list-item-1">TOP</a>
						<a href=${param.thisPage eq "index" ? "#simple-list-item-2" : "../shop/list" } id="category">CATEGORY</a>
						<a href=${param.thisPage eq "index" ? "#simple-list-item-4" : "../statistics/statistics" } id="research">RESEARCH</a>
         			</div>
					<div class="search_menu">
						<div class="search_bar">
     						<form action="${pageContext.request.contextPath}/search/search"
								method="post">
								<div class="search_box">
									<button type="submit" style="display: contents">
										<img class="search_img"
											src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
											alt="" />
									</button>
									<input class="search_input" type="text" name="keyword"
										value="${keyword}" placeholder="검색어 입력...">
								</div>
							</form>
						</div>
					</div>
					<div class="top_user">
						<a href="${pageContext.request.contextPath}/users/info" class="user_menu badge text-bg-primary">${sessionScope.id }</a>
						<a id="logout" href="javascript:" class="logout_menu btn btn-outline-danger" style="padding-top:0px;">LOGOUT</a>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
    
    
<div class="chat_area">
	<div class="chat">
		<div id="chat_box">
		</div>
		<div class="msg_box">
		    <input type="text" id="msg">
		   	<svg id="msg_process" xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
				<path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z"/>
			</svg>
		</div>
	</div>
</div>

    
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.2.1/chart.umd.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="https://unpkg.com/vue@3/dist/vue.global.js"></script>
<script>
	//ClientID를
	//ID가 있다면 읽어오고
	//없다면 후보군 중 랜덤한 하나를 지정한다.
	var id = "${id}"
	if(id == ""){
		console.log("실행")
		document.getElementById("msg").value = " 채팅 참여를 위해서는 로그인이 필요합니다.";
		document.getElementById("msg").setAttribute("style", "color : #c9c9c9");
		document.getElementsByClassName("msg_box")[0].setAttribute("style", "pointer-events: none;");
	}else{
        sessionStorage.setItem("clientID", id);
	}

/* 	console.log(sessionStorage.getItem("clientID"));	
	//id를 임의로 변경한다.
	document.querySelector("#ID_change").addEventListener("click", function(){
		const id = document.querySelector("#ID").value;
		sessionStorage.setItem("clientID", id);
		console.log(id);
		
  	});
	 */
	
    //웹소켓을 연결
    const ws = new WebSocket('ws://34.125.190.255:8011/');
	//const ws = new WebSocket('ws://localhost:8011/');
	
	//연결 성공 시에 실행되는 function
    ws.onopen = function() {
      console.log('Connected to server!');
      addChatRoom('Connected to server!');
    };
    //데이터를 받아올 때 실행되는 function
    ws.onmessage = function(event) {
	    console.log('Received message: ' + event.data);

//	    const data = JSON.stringify(result);
	    //받아온 데이터가 JSON 데이터이므로 parsing 해준다.
	    event.data.text().then((jsonString) => {
	        const jsonObj = JSON.parse(jsonString);
	        if(jsonObj.type=="message"){
		        console.log(jsonObj.text);
		        const text = jsonObj.text;
		        const id = jsonObj.id;
		        addChatRoom(id+": "+text);
		    }else if(jsonObj.type=="data"){
		    	console.log(jsonObj.text);
		    }
	    }).catch((error) => {
	        console.error('Error parsing message as JSON:', error);
	    });
    };
    

  	//클릭 할 필요 없이 msg입력 후 enter로 send하게 해주는 이벤트 리스너
  	document.querySelector("#msg").addEventListener("keydown", function(key){
	  	//해당하는 키가 엔터키(13) 일떄
	     if(key.keyCode == 13){
	         //msg_process를 클릭해준다.
	         sendMessages();
	         //document.querySelector("#msg_process").click();
	     }
  	})
  	
  	//msg를 websocket 측에 쏴주는 이벤트리스너
  	document.querySelector("#msg_process").addEventListener("click", function(){
  		sendMessages();
  	});
    //type = chatting에 참여한 client임을 알림
    //text = 메시지 데이터
    //id = 아이디
    //date = 혹시 필요할지 몰라서 시간 정보도 포함
  	function sendMessages() {
        const msg = document.querySelector("#msg").value;
        var clientID = sessionStorage.getItem("clientID");
        var msg1 = {
        	    type: "message",
        	    text: msg,
        	    id:   clientID,
        	    date: Date.now()
        	  };
        
        ws.send(JSON.stringify(msg1))
        //메시지를 보낸 후 msg 인풋을 초기화.
        document.querySelector("#msg").value="";
    }
	//chatRoom, 즉 채팅창에 메시지를 띄운다.
	//현재는 자신의 정보를 별도로 표기하고 있지는 않다.
	function addChatRoom(text){
		const chatBox = document.querySelector('#chat_box');
        const messageElement = document.createElement('div');
        messageElement.innerText = text;
        chatBox.appendChild(messageElement);
	}

</script>
	<script>
    	let isLogin=${ not empty id };
	    if(!isLogin){
			document.querySelector("#login").addEventListener("click", function(){
				const url = document.location.href;	
				console.log(url);
				var url1 = url.split("/");
				console.log(url1);
				var url2 = "/"+url1[3];
				for(var i = 4; i < url1.length; i++) {
					 url2 = url2+"/"+url1[i];
				}
				console.log(url2);
				
				const encodedUrl = encodeURIComponent(url2);
				console.log(encodedUrl);
				
				
				location.href= "${pageContext.request.contextPath}/users/loginform?url="+url2;
			});
		}else{
			document.querySelector("#logout").addEventListener("click", function(){
			const url = document.location.href;	
			console.log(url);
			var url1 = url.split("/");
			console.log(url1);
			var url2 = "/"+url1[3];
			for(var i = 4; i < url1.length; i++) {
				 url2 = url2+"/"+url1[i];
			}
			console.log(url2);
			
			const encodedUrl = encodeURIComponent(url2);
			console.log(encodedUrl);
			
			
			location.href= "${pageContext.request.contextPath}/users/logout?url="+url2;
			});
		}
    </script>
