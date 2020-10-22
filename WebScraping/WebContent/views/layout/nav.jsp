<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>


  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
    <div class="container">
      <a class="navbar-brand" href='<c:url value="/home"></c:url>'>Trang Chủ</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href='<c:url value="/home"></c:url>'>Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="bongdacomvn" href='<c:url value="/news?category=bongda.com.vn"></c:url>'>Bongda.com.vn</a>
          </li>
          <li class="nav-item">
            <a class="nav-link"	id="zingnewsvn" href='<c:url value="/news?category=zingnews.vn"></c:url>'>Zingnews.vn</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <script type="text/javascript">
	$(document).ready(function(){
		var value = '${param.category}';
		switch(value){
			case 'bongda.com.vn':
				$("#bongdacomvn").parent().addClass('active').siblings().removeClass('active');
				break;
			case 'zingnews.vn':
				$("#zingnewsvn").parent().addClass('active').siblings().removeClass('active');
			break;
		}
		
	});
	</script>