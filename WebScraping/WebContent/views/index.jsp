<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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

</head>

<body>

  <!-- Navigation -->
	<jsp:include page="../views/layout/nav.jsp"/>

  <!-- Page Content -->
  <div class="container">

    <!-- Jumbotron Header -->
    <header class="jumbotron my-4">
      <h1 class="display-3">A Warm Welcome!</h1>
      <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
      <a href="#" class="btn btn-primary btn-lg">Call to action!</a>
    </header>

    <!-- Page Features -->
  <!-- /.container -->
</div>
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
