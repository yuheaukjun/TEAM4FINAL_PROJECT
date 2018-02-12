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
  <title>Portfolio 4 Column | Metronic Frontend</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    
  <%@ include file="../inc/header_script.jsp" %>
  <link href="${pageContext.request.contextPath}/assets/pages/css/portfolio.css" rel="stylesheet">  
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
    <%@ include file="../inc/header.jsp" %>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="${pageContext.request.contextPath }/">Home</a></li>
            <li class="active">Gallery</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>Portfolio 4 Column</h1>
            <div class="content-page">
                <div class="filter-v1">
                  <ul class="mix-filter">
                    <li data-filter="all" class="filter active">All</li>
                    <li data-filter="category_1" class="filter">Team</li>
                    <li data-filter="category_2" class="filter">Game</li>
                    <li data-filter="category_3" class="filter">Free</li>
                    <li class="pull-right"><a href="gallery_insert.do">글 쓰기</a></li>
                  </ul>
	              <div class="row mix-grid thumbnails">              
	              
	              	  <c:forEach var="tmp" items="${listTeam }">
		                  <div class="col-md-3 col-sm-4 mix category_1 mix_all" style="display: block; opacity: 1; ">
		                    <div class="mix-inner">
		                       <img alt="" src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive">
		                       <div class="mix-details">
		                          <h4>${tmp.title }</h4>
		                          <a class="mix-link"><i class="fa fa-link"></i></a>
		                          <a data-rel="fancybox-button" title="작성자 : ${tmp.writer }" href="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
								  <c:if test="${id eq tmp.writer }">
			                          <a href="javascript:deleteConfirm(${tmp.num })" class="mix-link" style="width: 41px; margin-top: 60px; left: 50%; margin-left: -22px;"><i class="fa fa-trash-o"></i></a>						  
							      </c:if>			                          
		                       </div>           
		                    </div>                       
		                  </div>
	                  </c:forEach>
	                  
	              	  <c:forEach var="tmp" items="${listGame }">
		                  <div class="col-md-3 col-sm-4 mix category_2 mix_all" style="display: block; opacity: 1; ">
		                    <div class="mix-inner">
		                       <img alt="" src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive">
		                       <div class="mix-details">
		                          <h4>${tmp.title }</h4>
		                          <a class="mix-link"><i class="fa fa-link"></i></a>
		                          <a data-rel="fancybox-button" title="작성자 : ${tmp.writer }" href="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
								  <c:if test="${id eq tmp.writer }">
			                          <a href="javascript:deleteConfirm(${tmp.num })" class="mix-link" style="width: 41px; margin-top: 60px; left: 50%; margin-left: -22px;"><i class="fa fa-trash-o"></i></a>						  
							      </c:if>			                          
		                       </div>           
		                    </div>                       
		                  </div>
	                  </c:forEach>
	                  
	              	  <c:forEach var="tmp" items="${listFree }">
		                  <div class="col-md-3 col-sm-4 mix category_3 mix_all" style="display: block; opacity: 1; ">
		                    <div class="mix-inner">
		                       <img alt="" src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="img-responsive">
		                       <div class="mix-details">
		                          <h4>${tmp.title }</h4>
		                          <a class="mix-link"><i class="fa fa-link"></i></a>
		                          <a data-rel="fancybox-button" title="작성자 : ${tmp.writer }" href="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
								  <c:if test="${id eq tmp.writer }">
			                          <a href="javascript:deleteConfirm(${tmp.num })" class="mix-link" style="width: 41px; margin-top: 60px; left: 50%; margin-left: -22px;"><i class="fa fa-trash-o"></i></a>						  
							      </c:if>			                          
		                       </div>           
		                    </div>                       
		                  </div>
	                  </c:forEach>	                  	                  
	              </div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- BEGIN SIDEBAR & CONTENT -->
      </div>
    </div>
    <%@ include file="../inc/footer.jsp" %>
    
    <%@ include file="../inc/footer_script.jsp" %>
    
	<script>		
		function deleteConfirm(num){
			var result=confirm(num+" 번 파일을 삭제 하시겠습니까?");
			if(result){
				location.href="delete.do?num="+num;
			}
		}
	</script>    
    
    <script src="${pageContext.request.contextPath}/assets/pages/scripts/portfolio.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/jquery-mixitup/jquery.mixitup.min.js" type="text/javascript"></script>        
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initTwitter();
            Portfolio.init();
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();              
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>