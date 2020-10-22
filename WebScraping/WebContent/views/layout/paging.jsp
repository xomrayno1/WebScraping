<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    	<nav aria-label="Page navigation example">
		  	<ul class="pagination">
			 	 	<li class="page-item">
						<c:choose>				
							<c:when test="${pageInfo.pageIndex == 1}">
								<a class="page-link" href="javascript:void(0)">Previous</a>
							</c:when>
							<c:otherwise>
								<a class="page-link" href='<c:url value="/news?category=${param.category}&page=${pageInfo.pageIndex -1}"></c:url>'>Previous</a>
							</c:otherwise>						
						</c:choose>
					</li>
		    		<c:forEach begin="1" end="${pageInfo.totalPage}" var="item" varStatus="i" >
						<c:choose>
							<c:when test="${i.index == pageInfo.pageIndex }">
								<li class="page-item active"><a  class="page-link" href="javascript:void(0)">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a  class="page-link" href='<c:url value="/news?category=${param.category}&page=${i.index}"></c:url>'>${i.index}</a></li>
							</c:otherwise>
						</c:choose>
		    		</c:forEach>
			    	<li class="page-item">
					    <c:choose>			    
						    	<c:when test="${pageInfo.pageIndex == pageInfo.totalPage }">
						    		<a class="page-link" href="javascript:void(0)">Next</a>
						    	</c:when>
						    	<c:otherwise>
						    		<a class="page-link" href='<c:url value="/news?category=${param.category}&page=${pageInfo.pageIndex + 1}"></c:url>'>Next</a>
						    	</c:otherwise>			  
					    </c:choose>
			    	 </li>
		 	 </ul>
		</nav>