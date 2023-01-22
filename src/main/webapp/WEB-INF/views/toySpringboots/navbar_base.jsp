<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!-- ----------여기부터 header------------ -->
<nav class="navbar bg-dark navbar-dark fixed-top navbar-expand-sm">
  <div class="container-fluid">
    <a href="/index.jsp" class="navbar-brand ms-5">
      <div style="font-family: 'Zen Dots', cursive" class="text-white">
        Holy Fitness
      </div>
    </a>
    <!--collapse의 경우에는 토글이 아니라 토글러. navbar-toggler -->
    <a href="#collapseID" class="navbar-toggler" data-bs-toggle="collapse"
      ><span class="navbar-toggler-icon"></span
    ></a>
    <div class="navbar-nav">
      <div class="collapse navbar-collapse me-5" id="collapseID">
        <a href="/Login.jsp" class="nav-link">Login</a>
        <a href="/join/agreementServlet" class="nav-link">Join</a>
      </div>
    </div>
  </div>
</nav>
