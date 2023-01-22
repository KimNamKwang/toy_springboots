<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ page
import="java.util.HashMap" %>
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
    <main>
      <%@ include file= "navbar_base.jsp" %>
      <div class="container" style="margin-top: 120px; margin-bottom: 120px">
        <div class="text-center border mt-5 p-4">
          <div>
            <span class="fs-1 fw-bold">LOGIN</span>
            <span>| 로그인</span>
          </div>
          <div class="m-3">
            <div>
              방문해 주셔서 감사합니다. 항상 고객 여러분을 위해서
              노력하겠습니다.
            </div>
            <div>
              불편하신 사항이 있으시면 고객센터로 문의하여 주시기 바랍니다.
            </div>
          </div>
          <div class="bg-secondary bg-opacity-10 p-4 ms-5 me-5 mb-4">
            <div class="d-flex flex-row justify-content-center">
              <form action="/toySpringboots/login" method="post">
                <div class="row">
                  <div class="col-md-4 mt-2 mb-1">
                    <div class="row align-items-center">
                      <div class="col">
                        <label for="" class="form-label">아이디</label>
                      </div>
                      <div class="col-md-6 p-0">
                        <input
                          type="text"
                          name="USER_ID"
                          class="form-control"
                        />
                      </div>
                    </div>
                  </div>
                  <div class="col-md-5 mt-2 mb-1">
                    <div class="row align-items-center">
                      <div class="col">
                        <label for="" class="form-label">비밀번호</label>
                      </div>
                      <div class="col-md-6 p-0">
                        <input
                          type="password"
                          name="PASSWORD"
                          class="form-control"
                        />
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <button class="col-12 btn btn-dark mt-2 mb-2" type="submit">
                      로그인
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="d-flex justify-content-end mt-2">
          <span class="d-flex align-items-center me-2">회원이 아니신가요?</span>
          <span>
            <a
              href="/join/agreementServlet"
              class="btn btn-sm btn-dark opacity-50"
              >회원가입</a
            >
          </span>
        </div>
      </div>
    </main>
    <%@ include file= "footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
