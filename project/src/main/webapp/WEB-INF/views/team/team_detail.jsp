<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>${Homedto.name }</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <%@ include file="../inc/header_script.jsp" %>
</head>
<!-- Head END -->
<script src="../resources/css/bootstrap.css"></script>
<script src="../resources/js/bootstrap.min.js"></script>

<!-- Body BEGIN -->

<body class="ecommerce">
    <%@ include file="../inc/header.jsp" %>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="${pageContext.request.contextPath }/">Home</a></li>
            <li><a href="${pageContext.request.contextPath }/team/team_list.do">Match</a></li>
            <li class="active">Team_detail</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>${Homedto.name }</h1>
            <div class="content-page">
              <div class="row">
                <!-- BEGIN LEFT SIDEBAR -->            
                <div class="col-md-9 col-sm-9 blog-item">
                  <div class="blog-item-img">
                    <!-- BEGIN CAROUSEL -->            
                    <div class="front-carousel">
                      <div id="myCarousel" class="carousel slide">
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                          <div class="item">
                            <img src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball1.jpg" alt="">
                          </div>
                          <div class="item active">
                            <img src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball2.jpg" alt="">
                          </div>
                        </div>
                        <!-- Carousel nav -->
                        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                          <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="carousel-control right" href="#myCarousel" data-slide="next">
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>                
                    </div>
                    <!-- END CAROUSEL -->             
                  </div>
                  <h2><strong>팀소개</strong></h2>
                  <c:if test="${not empty id and Homedto.name ne awayteam and awayteam ne null}">
                  	<c:choose>
	                  	<c:when test="${Matched }">
	                  		<button style="width:90px" class="btn btn-primary col-xs-offset-10 col-sm-offset-7">매칭신청됨</button>
	                  	</c:when>
	                  	<c:otherwise>
	             	        <a href="#matching-pop-up" class="fancybox-fast-view"><button style="width:80px" class="btn btn-primary col-xs-offset-10 col-sm-offset-7">매칭신청</button></a>
	                  	</c:otherwise>
                  	</c:choose>
                  </c:if>
                 

                
             
                <c:if test="${not empty id }">
                	<c:if test="${userdto.team eq null}">
                		<c:if test="${teamdto.jointeam eq null }">
                			<a href="joiningconfirm.do?id=${id}&name=${Homedto.name}"><button class="btn btn-success">팀가입신청</button></a>
                		</c:if>
                	</c:if>
                </c:if> 
                
             	
                  
                  <p>${Homedto.content }</p>
                  <p>홈그라운드 : ${Homedto.ground }</p>
                  <c:forEach var="tmp" items="${memberlist }">
                  	<blockquote >
	                    <i style="font-color:#E84D1C" class="fa fa-user">&nbsp; &nbsp;${tmp.id }</i>
	                    <p><strong>${tmp.responsibility }</strong> &nbsp;| &nbsp;&nbsp;포지션 : ${tmp.b_position} &nbsp;| &nbsp; 구력 : ${tmp.career }년</p>
                  	</blockquote> 
                  </c:forEach>
                  
                  <c:if test="${id eq Homedto.member }">
	                  <h2>팀가입 신청목록</h2>
	                  <c:forEach var="tmp" items="${joininfo }">
	                  		<ul class="blog-info">
	                  			<li><i>이름 : ${tmp.name }</i></li>
	                  			<li><i>경력 : ${tmp.career }</i></li>
	                  			<li><i>포지션 : ${tmp.b_position }</i></li>
	                  			<li><i><a href="join.do?name=${Homedto.name}&joinid=${tmp.id}">수락</a></i></li>
	                  			<li><i><a href="joinrefuse.do?name=${Homedto.name}&joinid=${tmp.id}">거절</a></i></li>
	                  		</ul>
	                  </c:forEach>
	                  <h2>매칭신청된 팀</h2>
	                  <c:forEach var="tmp" items="${awayteaminfo }">
	                  		<ul class="blog-info">
	                  			<li><i>팀이름 : ${tmp.name }</i></li>
	                  			<li><i>leader : ${tmp.leader }</i></li>
		                        <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 ${tmp.win }</li>
		                        <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패 ${tmp.lose }</li>
		                        <li><i class="fa fa-tags"></i> 총경기 : ${tmp.total }</li>
		                        <li><i class="fa fa-tags"></i> 홈그라운드 : ${tmp.ground }</li> 
		                        
		                        <c:choose>
		                        	<c:when test="${tmp.successMatching }">
		                        		<li><a href="matchDetail.do?awayteam=${tmp.name }&hometeam=${Homedto.name}">
				                        <button class="btn btn-success">매칭페이지</button></a></li>
				                        
		                        	</c:when>
		                        	<c:otherwise>
		                        		<li><a href="matchsuccess.do?awayteam=${tmp.name }&hometeam=${Homedto.name}">
				                        <button class="btn btn-primary">수락</button></a></li>
				                        <li><a href="refuseMatch.do?awayteam=${tmp.name }&hometeam=${Homedto.name}">
				                        <button class="btn btn-primary">거절</button></a></li>
		                        	</c:otherwise>
		                        </c:choose>
		                                        
		                      </ul>
	                  </c:forEach>
                  </c:if>
                  <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                  <p>Culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                  <ul class="blog-info">
                    <li><i class="fa fa-user"></i> By admin</li>
                    <li><i class="fa fa-calendar"></i> 25/07/2013</li>
                    <li><i class="fa fa-comments"></i> 17</li>
                    <li><i class="fa fa-tags"></i> Metronic, Keenthemes, UI Design</li>
                  </ul>

               
                
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
        
        <!-- MATCHING 팝업창 -->
        <div id="matching-pop-up" style="display: none; width: 700px;">
        	 <h2>경기 매칭</h2>
        	 <form action="matchinsert.do" method="post">
        	 	<input type="hidden" name="name" value="${Homedto.name }" />
        	 	<div class="input-group">
        	 		<label for="matchDate">경기날짜</label>
                    <input type="date" name="matchDate" class="form-control" />
                </div> 
	        	<div class="form-group">
	        	 <label for="ground">그라운드</label>
	        	 <input class="form-control" type="text" name="ground" placeholder="그라운드를 입력해주세요"/>
	            </div> 
	            <button class="btn btn-primary pull-right" type="submit">신청하기</button>
             </form>
    	</div>
    	
    	</div>
      </div>
    </div>
    <%@ include file="../inc/footer.jsp" %>
    
    <%@ include file="../inc/footer_script.jsp" %>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Layout.initSliderRange();
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();                    
        });
       
    </script>
    
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>