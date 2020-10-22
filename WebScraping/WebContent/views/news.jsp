<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Tổng hợp tin tức thể thao</title>

  <!-- Bootstrap core CSS -->
 <link href='<c:url value="/static/vendor/bootstrap/css/bootstrap.min.css"> </c:url>' rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href='<c:url value="/static/css/shop-homepage.css"></c:url>' rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

  <!-- Navigation -->
  <jsp:include page="../views/layout/nav.jsp"/>

  <!-- Page Content -->
  <div class="container">
	<br>


    <!-- Page Features -->
    <div class="row text-center">
     	 <c:forEach items="${listNews}" var="news">
	      	<div class="col-lg-3 col-md-6 mb-4">
		        <div class="card h-100">
		          <img class="card-img-top" src="${news.imgThumb}" alt="">
		          <div class="card-body">
		            <h5 class="card-title">${news.title}</h5>
		           <!--  <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p> -->
		          </div>
		          <div class="card-footer">
		            <a href='${news.detailUrl}' class="btn btn-primary">Find Out More!</a>
		          </div>
		        </div>
	      </div>
      	</c:forEach>
  
  		<jsp:include page="../views/layout/paging.jsp"></jsp:include>
		
    </div>
    
    



  </div>
  <!-- /.container -->


  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
	<script src='<c:url value="/static/vendor/jquery/jquery.min.js"	></c:url>'></script>
  <script src='<c:url value="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></c:url>'></script>

</body>

</html>
