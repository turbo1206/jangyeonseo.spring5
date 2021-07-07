<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<!-- 메인콘텐츠영역 -->
<div id="container">
    <!-- 메인상단위치표시영역 -->
    <%@ include file="./board_header.jsp" %>
    <!-- //메인상단위치표시영역 -->

    <!-- 메인본문영역 -->
    <div class="bodytext_area box_inner">			
        <ul class="bbsview_list">
            <li class="bbs_title">박물관 미션 투어 응모 당첨자 발표</li>
            <li class="bbs_date">작성일 : <span>2018.08.09</span></li>
            <li class="bbs_hit">조회수 : <span>235</span></li>
            <li class="bbs_content">
                <div class="editer_content">
                    안녕하세요. 믿을 수 있는 스프링정보, 스프링입니다.<br>
                    박물관 미션투어에 관심과 참여 감사드립니다. <br>
                    선정되신 분들도 진심으로 축하드립니다. <br>
                    앞으로도 큰 관심 부탁드리며, 메일로도 안내 예정이니 참고하시기 바랍니다. <br>
                    감사합니다. <br><br>
                    [당첨자]<br>
                    김용* kimyong***@naver.com <br>
                    인봉* in2018a***@naver.com<br>
                    예경* yyhong***@naver.com<br>
                    한진* haha***@naver.com<br>
                    박수* pky**@naver.com<br>
                    명진* mma5**@nate.com<br>
                    김영* rtfg6*@naver.com<br>
                    서영* seo20**@gmail.com<br>
                    윤소* yoon2***@naver.com<br>
                    지은* ji***@daum.net
                </div>
            </li>
        </ul>
        <p class="btn_line txt_right">
            <a href="board_list.html" class="btn_bbs">목록</a>
        </p>
        
    </div>
    <!-- //메인본문영역 -->

	<!-- 댓글영역 -->
	<div class="row">
		<div class="col-md-12">
			<!-- 댓글 입력폼 -->
			<div class="card-default">
				<div class="card-header">
				  <h3 class="card-title">댓글 쓰기</h3>
				</div>
				<div class="card-body p-0">
				  <div class="bs-stepper linear">
					<div class="bs-stepper-header" role="tablist">
					  <div class="line"></div>
					</div>
					<div class="bs-stepper-content">
					  <!-- your steps content here -->
					  <div id="logins-part" class="content active dstepper-block" role="tabpanel" aria-labelledby="logins-part-trigger">
						<div class="form-group">
						  <label for="writer">작성자</label>
						  <input type="text" class="form-control" id="writer" placeholder="작성자를 입력하세요">
						</div>
						<div class="form-group">
						  <label for="reply_text">댓글내용</label>
						  <input type="text" class="form-control" id="reply_text" placeholder="댓글내용을 입력하세요">
						</div>
					  </div>
					  <div id="information-part" class="content" role="tabpanel" aria-labelledby="information-part-trigger">
						<button type="button" class="btn btn-warning" id="btn_reply_write">댓글등록</button>
					  </div>
					</div>
				  </div>
				</div>
				<!-- /.card-body -->
				<div class="card-footer">
				  아래 댓글리스트 버튼을 클릭하시면 댓글 목록이 출력이 됩니다.
				</div>
			  </div>
			<!-- //댓글 입력폼 -->
		</div>
		<div class="col-md-12">
		  <!-- The time line -->
		  <div class="timeline">
			<!-- timeline time label -->
			<div class="time-label">
			  <span class="bg-red" data-toggle="collapse" href="#collapseReply" role="button" id="btn_reply_list">
				  댓글리스트
				  [<span>1</span>]
			  </span>
			</div>
			<!-- 콜랩스 시작 -->
			<div class="collapse timeline" id="collapseReply">
			<!-- time-label 이후 after요소로 템플릿결과가 여기에 출력됨. -->
			<!-- /.timeline-label -->
			<!-- timeline item -->
			<!-- 댓글리스트를 자바스크립트의 빵틀(템플릿)을 만듭니다.  -->
			<!-- 고전append함수를 사용하지 않고, handlebars라는 확장프로그램(아래) 임포트 -->
			<!-- 장점은 기존 퍼블리셔가 만든태그를 그대로 사용가능 -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
			<script id="template" type="text/x-handlebars-template">
			{{#each .}}
			<div class="div_template" data-rno="{{rno}}">
			  <i class="fas fa-envelope bg-blue"></i>
			  <div class="timeline-item">
				<h3 class="timeline-header">{{replyer}}</h3>
				<div class="timeline-body">{{reply_text}}</div>
				<div class="timeline-footer">
				  <a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modal-reply">수정</a>
				</div>
			  </div>
			</div>
			{{/each}}
			</script>
			
			<!-- 페이징 처리 -->
			<div class="row">
				<ul class="pagination" style="margin: 0 auto;">
					<!-- <li class="paginate_button page-item previous disabled" id="example2_previous">
						<a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
					</li>
					<li class="paginate_button page-item active">
						<a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">1</a>
					</li>
					<li class="paginate_button page-item ">
						<a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0" class="page-link">2</a>
					</li>
					<li class="paginate_button page-item ">
						<a href="#" aria-controls="example2" data-dt-idx="3" tabindex="0" class="page-link">3</a>
					</li>
					<li class="paginate_button page-item ">
						<a href="#" aria-controls="example2" data-dt-idx="4" tabindex="0" class="page-link">4</a>
					</li>
					<li class="paginate_button page-item ">
						<a href="#" aria-controls="example2" data-dt-idx="5" tabindex="0" class="page-link">5</a>
					</li>
					<li class="paginate_button page-item ">
						<a href="#" aria-controls="example2" data-dt-idx="6" tabindex="0" class="page-link">6</a>
					</li>
					<li class="paginate_button page-item next" id="example2_next">
						<a href="#" aria-controls="example2" data-dt-idx="7" tabindex="0" class="page-link">Next</a>
					</li> -->
				</ul>
			</div>
		  	<!-- //페이징 처리 -->
		    </div>
		    <!-- //콜랩스 끝 -->
		  </div>
		  <!-- END timeline item -->
		</div>
		<!-- /.col -->
	</div>
	<!-- //댓글영역 -->

</div>
<!-- //메인콘텐츠영역 -->

<%@ include file="../include/footer.jsp" %>