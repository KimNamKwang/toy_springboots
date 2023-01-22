<%@ page contentType="text/html; charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>홀리피트니스</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap"
      rel="stylesheet"
    />
  </head>
  <body style="font-family: 'IBM Plex Sans KR', cursive">
    <choose>
      <when test="${empty resultMap}">
        <%@ include file= "navbar_login.jsp" %>
      </when>
      <otherwise> <%@ include file= "navbar_base.jsp" %> </otherwise>
    </choose>
    <!-- ----------여기부터 main시작------------------>
    <main>
      <div class="container-fluid">
        <div class="card">
          <img
            src="../../../../resources/static/images/KakaoTalk_20221110_145226262.png"
            alt=""
            class="bg-repeat"
          />
          <div
            class="card-img-overlay d-flex align-items-center justify-content-center flex-column"
          >
            <div
              class="text-light text-center"
              style="text-shadow: 5px 5px 3px rgba(0, 0, 0, 0.3)"
            >
              <h4 class="card-title fs-1 fw-bold">가늘군 최고의 시설,</h4>
              <p class="card-text fs-1 fw-bold">합리적인 피트니스!</p>
            </div>
          </div>
        </div>

        <div
          id="carouselExampleControls"
          class="carousel slide"
          data-bs-ride="carousel"
        >
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                src="../../../../resources/static/images/3.png"
                class="d-block w-100"
                alt="..."
              />
            </div>
            <div class="carousel-item">
              <img
                src="../../../../resources/static/images/2.png"
                class="d-block w-100"
                alt="..."
              />
            </div>
            <div class="carousel-item">
              <img
                src="../../../../resources/static/images/1.PNG"
                class="d-block w-100"
                alt="..."
              />
            </div>
          </div>
          <button
            class="carousel-control-prev"
            type="button"
            data-bs-target="#carouselExampleControls"
            data-bs-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button
            class="carousel-control-next"
            type="button"
            data-bs-target="#carouselExampleControls"
            data-bs-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    </main>
    <%--
    <!-- -------------------여기까지 main ------------------- -->
    --%> <%@ include file= "footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
