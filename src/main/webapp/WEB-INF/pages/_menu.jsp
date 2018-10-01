<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/welcome">Thẻ cào trực tuyến vn</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
         <li class="nav-item"><a
					href="${pageContext.request.contextPath}/welcome" class="nav-link">Trang chủ</a></li>
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/userInfo" class="nav-link">User
						Info</a></li>
				<li class="nav-item active"><a
					href="${pageContext.request.contextPath}/admin" class="nav-link">Admin</a></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}">

					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/logout" class="nav-link">Đăng xuất</a></li>
				</c:if>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->

