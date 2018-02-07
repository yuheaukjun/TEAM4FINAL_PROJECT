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
  <title>Blog Page | Metronic Frontend</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  
  <%@ include file="../inc/header_script.jsp" %>
</head>
<!-- Head END -->
<script src="../resource/css/bootstrap.css"></script>
<!-- Body BEGIN -->
<body class="ecommerce">

    <%@ include file="../inc/header.jsp" %>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="javascript:;">Blog</a></li>
            <li class="active">Blog Page</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>LEGEND TEAMS</h1>
            <div class="content-page">
              <div class="row">
                <!-- BEGIN LEFT SIDEBAR -->               
                <div class="col-md-12 col-sm-12 blog-posts">            
                	  <div class="row">                                   	
	                    <div class="col-md-4 col-sm-4 match-left">
	                      <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #0033cc;">Home Team</a></h2>	                       
	                      <!-- BEGIN CAROUSEL -->            
	                      <div class="front-carousel">	                      
	                        <div class="carousel slide" id="myCarousel${tmp.name }">
	                          <!-- Carousel items -->
	                          <div class="carousel-inner">
	                            <div class="item">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball1.jpg">
	                            </div>
	                            <div class="item">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball2.jpg">
	                            </div>
	                            <div class="item active">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball3.jpg">
	                            </div>
	                          </div>
	                          <!-- Carousel nav -->
	                          <a data-slide="prev" href="#myCarousel${tmp.name }" class="carousel-control left">
	                            <i class="fa fa-angle-left"></i>
	                          </a>
	                          <a data-slide="next" href="#myCarousel${tmp.name }" class="carousel-control right">
	                            <i class="fa fa-angle-right"></i>
	                          </a>
	                        </div>                
	                      </div>
	                      
	                      <table class="member_info">
	                      	<thead>
	                      		<tr>
	                      			<th>이름</th>
	                      			<th>포지션</th>
	                      		</tr>
	                      	</thead>
	                      	<tbody>
	                      		<tr>
	                      			<td><strong style="color: #0033cc;">김응길</strong></td>
	                      			<td><strong style="color: #0033cc;">포지션</strong></td>
	                      		</tr>
	                      		<tr>
	                      			<td>김응길</td>
	                      			<td>포지션</td>
	                      		</tr>
	                      		<tr>
	                      			<td>김응길</td> 
	                      			<td>포지션</td>
	                      		</tr>
	                      		<tr>
	                      			<td>김응길</td>
	                      			<td>포지션</td>
	                      		</tr>
	                      		<tr>
	                      			<td>김응길</td>
	                      			<td>포지션</td>
	                      		</tr>	                      			                      			                      			                      		
	                      	</tbody>
	                      </table>
	                      
	                      <!-- END CAROUSEL -->
	                      <ul class="blog-info" style="text-align: center; padding-top: 10px;">
	                        <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
	                        <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
	                        <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
	                      </ul>	                                   
	                    </div>
	                    <div class="col-md-4 col-sm-4 match-vs" style="text-align: center; border-left: 1px solid #ececec; border-right: 1px solid #ececec;">
							<img src="${pageContext.request.contextPath}/assets/pages/img/match_vs.png" alt="" />
							<div class="vs_info_lg">
								<table class="vs_info">
									<thead>
										<tr>
											<th width="30%">항목</th>
											<th width="70%">내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>장소</td>
											<td>에이콘</td>
										</tr>
										<tr>
											<td>일정</td>
											<td>2018 / 02 / 20</td>
										</tr>
										<tr>
											<td>전적</td>
											<td>
												<ul class="blog-info" style="margin: 0">
							                        <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
							                        <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
							                        <li><i class="fa fa-tags"></i> 총경기 : 20</li>
						                        </ul> 
											</td>									
										</tr>	
										<tr>
											<td>상태</td>									
											<td>
												<strong style="color: #0033cc;">경기 준비</strong>
												<!-- <strong style="color: #f10025;">경기 종료</strong> -->
											</td>								
										</tr>	
									</tbody>																																										
								</table>
								<a href="#match-pop" class="btn btn-primary fancybox-fast-view" style="color: #ffffff; margin: 65px 0 30px 0;">경기 시작</a>
							</div>
							                              
	                    </div>	
	                    
	                    <div class="col-md-4 col-sm-4 match-right" >
	                      <h2 style="text-align: center; padding-bottom: 10px; font-size: 22px;"><a href="team_detail.do" style="color: #f10025;">Away Team</a></h2>	                       
	                      <!-- BEGIN CAROUSEL -->            
	                      <div class="front-carousel">	                      
	                        <div class="carousel slide" id="myCarousel${tmp.name }">
	                          <!-- Carousel items -->
	                          <div class="carousel-inner">
	                            <div class="item">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball1.jpg">
	                            </div>
	                            <div class="item">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball2.jpg">
	                            </div>
	                            <div class="item active">
	                              <img alt="" src="${pageContext.request.contextPath}/assets/pages/img/basketball/basketball3.jpg">
	                            </div>
	                          </div>
	                          <!-- Carousel nav -->
	                          <a data-slide="prev" href="#myCarousel${tmp.name }" class="carousel-control left">
	                            <i class="fa fa-angle-left"></i>
	                          </a>
	                          <a data-slide="next" href="#myCarousel${tmp.name }" class="carousel-control right">
	                            <i class="fa fa-angle-right"></i>
	                          </a>
	                        </div>                
	                      </div>
	                      <table class="member_info">
	                      	<thead>
	                      		<tr>
	                      			<th>이름</th>
	                      			<th>포지션</th>
	                      		</tr>
	                      	</thead>
	                      	<tbody>
	                      		<tr>
	                      			<td><strong style="color: #f10025;">유혁준</strong></td>
	                      			<td><strong style="color: #f10025;">포지션</strong></td>
	                      		</tr>
	                      		<tr>
	                      			<td>유혁준</td>
	                      			<td>포지션</td>
	                      		</tr>
	                      		<tr>
	                      			<td>유혁준</td> 
	                      			<td>포지션</td>
	                      		</tr>
	                      		<tr>
	                      			<td>유혁준</td>
	                      			<td>포지션</td>
	                      		</tr>
	                      		<tr>
	                      			<td>유혁준</td>
	                      			<td>포지션</td>
	                      		</tr>	                      			                      			                      			                      		
	                      	</tbody>
	                      </table>                    
	                      <!-- END CAROUSEL -->
	                      <ul class="blog-info" style="text-align: center; padding-top: 10px;">
	                        <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
	                        <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
	                        <li><i class="fa fa-tags"></i> 총경기 : 20</li>                      
	                      </ul>	                                   
	                    </div>	   
							<div class="vs_info_xs">
								<table class="vs_info">
									<thead>
										<tr>
											<th width="25%">항목</th>
											<th width="75%">내용</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>장소</td>
											<td>에이콘</td>
										</tr>
										<tr>
											<td>일정</td>
											<td>2018 / 02 / 20</td>
										</tr>
										<tr>
											<td>전적</td>
											<td>
												<ul class="blog-info" style="margin: 0">
							                        <li><i style="color:blue" class="glyphicon glyphicon-triangle-top"></i> 승 10</li>
							                        <li><i style="color:red" class="glyphicon glyphicon-triangle-bottom"></i> 패  10</li>
							                        <li><i class="fa fa-tags"></i> 총경기 : 20</li>
						                        </ul> 
											</td>									
										</tr>	
										<tr>
											<td>상태</td>									
											<td>
												<strong style="color: #0033cc;">경기 준비</strong>
												<!-- <strong style="color: #f10025;">경기 종료</strong> -->
											</td>								
										</tr>	
									</tbody>																																										
								</table>
								<a href="#;" class="btn btn-primary fancybox-fast-view" style="color: #ffffff; margin: 65px 0 30px 0;">경기 시작</a>
							</div>	                    	                    	                                        
	                  </div>
                 	  <hr class="blog-post-sep">
                </div>
                <!-- END LEFT SIDEBAR -->
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
    
    <div id="match-pop" style="display: none; max-width: 700px; min-width: 400px; text-align: center;">
		<h3 style="padding: 20px 0">경기 기록</h3>
		<form action="pointinsert.do?homeTeam=${matchdto.homeTeam }" method="post">
			<table class="match_modal">
				<thead>
					<tr>
						<th style="color: #0033cc">Home Team</th>
						<th style="color: #f10025;">Away Team</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>김응길 팀</td>
						<td>유혁준 팀</td>
					</tr>
					<tr>
						<td><input type="number" class="form-control" placeholder="점수를 입력하세요." required="required" maxlength="3"></td>
						<td><input type="number" class="form-control" placeholder="점수를 입력하세요." required="required" maxlength="3"></td>
					</tr>
				</tbody>
			</table>   
			<button type="submit" class="btn btn-primary" style="margin: 20px 0;">확인</button>
		</form> 
    </div>     
    <%@ include file="../inc/footer.jsp" %>
    
    <%@ include file="../inc/footer_script.jsp" %>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initTwitter();
            Layout.initOWL();
            
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();                    
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>