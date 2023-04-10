<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zxx">	

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>가지마켓</title>
	
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" type="text/css">
</head>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <jsp:include page="../../../resources/fragments/header.jsp"></jsp:include>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
	   	<jsp:include page="../../../resources/fragments/hero.jsp">
	   		<jsp:param name="categories" value="${categories}" />
	   	</jsp:include>
   	</section>
    <!-- Hero Section End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
            
                <div class="col-lg-4 col-md-6">
                	<div class="latest-product__text">
                        <h4>조회순</h4>
                        <div class="latest-product__slider owl-carousel">
                      		<div class="latest-prdouct__slider__item"> <!-- 동적으로 닫기 -->
	                            <c:forEach var="ProductDTO" items="${orderViews }" begin="0" end="2">
	                        			<a href="#" class="latest-product__item">
		                                    <div class="latest-product__item__pic">
		                                        <img src="${pageContext.request.contextPath }/resources/upload/${fn:split(ProductDTO.productPic,'|')[0]}" alt="">
		                                    </div>
		                                    <div class="latest-product__item__text">
		                                        <h6>${status.count}. ${ProductDTO.productTitle }</h6>
		                                        <span>${ProductDTO.productPrice }</span>
		                                    </div>
		                                </a>
			                   	</c:forEach>
                       		</div>
                       		<div class="latest-prdouct__slider__item"> <!-- 동적으로 닫기 -->
	                            <c:forEach var="ProductDTO" items="${orderViews }" begin="3" end="5">
	                        			<a href="#" class="latest-product__item">
		                                    <div class="latest-product__item__pic">
		                                        <img src="${pageContext.request.contextPath }/resources/upload/${fn:split(ProductDTO.productPic,'|')[0]}" alt="">
		                                    </div>
		                                    <div class="latest-product__item__text">
		                                        <h6>${status.count}. ${ProductDTO.productTitle }</h6>
		                                        <span>${ProductDTO.productPrice }</span>
		                                    </div>
		                                </a>
			                   	</c:forEach>
                       		</div>
	                   </div>
              	  </div>
              </div>
              
              <div class="col-lg-4 col-md-6">
                	<div class="latest-product__text">
                        <h4>관심순</h4>
                        <div class="latest-product__slider owl-carousel">
                      		<div class="latest-prdouct__slider__item"> <!-- 동적으로 닫기 -->
	                            <c:forEach var="ProductDTO" items="${wishList }" begin="0" end="2">
	                        			<a href="#" class="latest-product__item">
		                                    <div class="latest-product__item__pic">
		                                        <img src="${pageContext.request.contextPath }/resources/upload/${fn:split(ProductDTO.productPic,'|')[0]}" alt="">
		                                    </div>
		                                    <div class="latest-product__item__text">
		                                        <h6>${status.count}. ${ProductDTO.productTitle }</h6>
		                                        <span>${ProductDTO.productPrice }</span>
		                                    </div>
		                                </a>
			                   	</c:forEach>
                       		</div>
                       		<div class="latest-prdouct__slider__item"> <!-- 동적으로 닫기 -->
	                            <c:forEach var="ProductDTO" items="${orderViews }" begin="3" end="5">
	                        			<a href="#" class="latest-product__item">
		                                    <div class="latest-product__item__pic">
		                                        <img src="${pageContext.request.contextPath }/resources/upload/${fn:split(ProductDTO.productPic,'|')[0]}" alt="">
		                                    </div>
		                                    <div class="latest-product__item__text">
		                                        <h6>${status.count}. ${ProductDTO.productTitle }</h6>
		                                        <span>${ProductDTO.productPrice }</span>
		                                    </div>
		                                </a>
			                   	</c:forEach>
                       		</div>
	                   </div>
              	  </div>
              </div>
              
              <div class="col-lg-4 col-md-6">
                	<div class="latest-product__text">
                        <h4>최신등록순</h4>
                        <div class="latest-product__slider owl-carousel">
                      		<div class="latest-prdouct__slider__item"> <!-- 동적으로 닫기 -->
	                            <c:forEach var="ProductDTO" items="${latestPrdList }" begin="0" end="2">
	                        			<a href="#" class="latest-product__item">
		                                    <div class="latest-product__item__pic">
		                                        <img src="${pageContext.request.contextPath }/resources/upload/${fn:split(ProductDTO.productPic,'|')[0]}" alt="">
		                                    </div>
		                                    <div class="latest-product__item__text">
		                                        <h6>${status.count}. ${ProductDTO.productTitle }</h6>
		                                        <span>${ProductDTO.productPrice }</span>
		                                    </div>
		                                </a>
			                   	</c:forEach>
                       		</div>
                       		<div class="latest-prdouct__slider__item"> <!-- 동적으로 닫기 -->
	                            <c:forEach var="ProductDTO" items="${orderViews }" begin="3" end="5">
	                        			<a href="#" class="latest-product__item">
		                                    <div class="latest-product__item__pic">
		                                        <img src="${pageContext.request.contextPath }/resources/upload/${fn:split(ProductDTO.productPic,'|')[0]}" alt="">
		                                    </div>
		                                    <div class="latest-product__item__text">
		                                        <h6>${status.count}. ${ProductDTO.productTitle }</h6>
		                                        <span>${ProductDTO.productPrice }</span>
		                                    </div>
		                                </a>
			                   	</c:forEach>
                       		</div>
	                   </div>
              	  </div>
              </div>
         </div>
      </div>
   </section>
    <!-- Latest Product Section End -->
    
<%--     <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${pageContext.request.contextPath }/resources/img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${pageContext.request.contextPath }/resources/img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End --> --%>


    <!-- Footer Section Begin -->
    <%@include file = "/resources/fragments/footer.jsp" %>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/jquery.nice-select.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/jquery-ui.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/jquery.slicknav.js"/>"></script>
    <script src="<c:url value ="/resources/js/mixitup.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/owl.carousel.min.js"/>"></script>
    <script src="<c:url value ="/resources/js/main.js"/>"></script>



</body>

</html>