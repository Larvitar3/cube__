<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<footer id="footer">
	<div id="endLogo">
		<img src="../image/logo.png" alt="">
	</div>
	<div id="endAbout">
		<ul class="aboutUl">
			<li><a href="#">이용약관</a></li>
			<li><a href="#">이메일주소 무단수집거부</a></li>
			<li><a href="#">개인정보처리방침</a></li>
		</ul>
		<div class="address">
			<address>서울특별시 성동구 고산자로 130 4층(응봉동,지오빌딩) 대표전화 :
				02-2282-2022 이메일 : tjdqls2s@naver.com</address>
		</div>
	</div>
	<div id="endSNS">
		<ul>
			<li class="snsImage"><img src="../image/kakao.png" alt=""></li>
			<li class="snsImage"><img src="../image/facebook.png" alt=""></li>
			<li class="snsImage"><img src="../image/youtube.png" alt=""></li>
			<li class="snsImage"><img src="../image/line.png" alt=""></li>
			<li class="snsImage"><img src="../image/twitter.png" alt=""></li>
		</ul>
	</div>
</footer>
</div>
<script>
        $(document).ready(function(){
            var current = 0;
            var setIntervalId;
            timer();

            
            function timer(){
                setIntervalId = setInterval(function(){
                    var i = current + 1;
                    if(i == 3) {
                        i = 0;
                    }
                    move(i);
                }, 2000)
            }

            function move(n){
                var currentEl = $('.imageBox ul li').eq(current)
                var nextEl = $('.imageBox ul li').eq(n)

                currentEl.css({ left: '0%'}).animate({left : '-100%'});
                nextEl.css({ left: '100%'}).animate({left : '0%'});

                current = n;
            }
        });
        
        $('.content').summernote({
    		placeholder : '내용을 입력하세요 ',
    		tabsize : 2,
    		width : null,
    		height : 300,
    		focus : true
    	});
    </script>



</body>
</html>