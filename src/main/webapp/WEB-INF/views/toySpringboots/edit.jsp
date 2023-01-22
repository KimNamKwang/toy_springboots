<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
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
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
  </head>
  <body style="font-family: 'IBM Plex Sans KR', cursive"  class="bg-secondary bg-opacity-10">
    <%@ include file= "navbar_login.jsp"  %>
    <main>
      <div class="container">
        <c:set var="form_action" value="update" />
        <c:if test="${empty resultMap}">
          <c:set var="form_action" value="insert" />
        </c:if>
        <form action="/toySpringboots/${form_action}" method="post">

        <div class="fs-4 fw-bold pb-3 pt-5 mt-4">👤 회원 정보 조회 / 수정</div>
        <div
          class="bg-light ps-4 pe-4 pb-1 mt-2"
          style="margin-top: 50px; margin-bottom: 120px"
        >
          <div>
            <table class="table align-middle">
             
              <tr>
                <th>아이디 *</th>
                <td>
                  <input class="form-control w-50" type="text"
                  name="USER_ID" value="${resultMap.USER_ID}" required ${form_action ==
                  "update" ? "readonly" : ""} />
                  <div class="invalid-tooltip"></div>
                </td>
              </tr>
                <tr>
                  <th>이름 *</th>
                  <td>
                    <input class="form-control w-50" type="text"
                    name="NAME" value="${resultMap.NAME}" placeholder="사용자 이름을 입력하세요" required ${statusDisabled} />
                    <div class="invalid-tooltip"></div>
                  </td>
                </tr>
                <tr>
                  <th class="text-nowrap">비밀번호 *</th>
                  <td>
                    <input
                      type="text"
                      class="form-control w-50"
                      name="PASSWORD"
                      value="${resultMap.PASSWORD}"
                      placeholder="사용할 비밀번호를 입력하세요"
                      required ${statusDisabled}
                    />
                  </td>
                </tr>
                <tr>
                  <th>이메일 *</th>
                  <td class="row d-flex align-items-center">
                    <input
                      type="text"
                      class="form-control w-50"
                      name="USER_EMAIL"
                      value="${resultMap.USER_EMAIL}"
                      placeholder="사용할 이메일을 입력하세요"
                      required ${statusDisabled}
                    />

                    <%--
                        String userEmail = ${resultMap.USER_EMAIL};
                        String userEmail1 = userEmail.substring(0, userEmail.indexOf('@'));
                        String userEmail2 = userEmail.substring(userEmail.indexOf('@') + 1, userEmail.length());
                        <div class="col">
                          <input
                        type="text"
                        class="form-control"
                        name="userEmail1"
                        value="<%= userEmail %>>"
                        ${statusDisabled}
                      />
                    </div>
                    @
                    <div class="col">
                      <input
                        type="text"
                        class="form-control"
                        name="userEmail2"
                        value="<%= userEmail2 %>"
                        ${statusDisabled}
                        />
                        
                        
                      </div>
                      <div class="col-auto">
                        <select class="form-select" name="userEmailSelect">
                          <option value="choice_email">직접입력</option>
                          <option value="@naver.com">naver.com</option>
                          <option value="@gmail.com">gmail.com</option>
                          <option value="@daum.net">daum.net</option>
                        </select>
                      </div>
                      --%>
                  </td>
                </tr>
                <tr>
                  <th>연락처 *</th>
                  <td class="row">
                    <input
                    type="text"
                    class="form-control w-50"
                    name="PHONE_NUMBER"
                    value="${resultMap.PHONE_NUMBER}"
                    placeholder="사용할 전화번호를 입력하세요"
                    required ${statusDisabled}
                  />


                    <%--
                    String phone_number = ${resultMap.PHONE_NUMBER};
                    String phoneFirst = phone_number.substring(0, phone_number.indexOf('-'));
                    String phoneSecond = phone_number.substring(4, phone_number.indexOf('-', 4));
                    String phoneThird = phone_number.substring(9, phone_number.length());          
                    <div class="col">
                      <select class="form-select" name="userPhoneFirst">
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="016">016</option>
                        <option value="017">017</option>
                        <option value="018">018</option>
                        <option value="019">019</option>
                      </select>
                    </div>
                    <div class="col-auto">-</div>
                    <div class="col">
                      <input
                        type="text"
                        class="form-control"
                        name="userPhoneSecond"
                        value="<%= phoneSecond %>"
                        ${statusDisabled}
                      />
                    </div>
                    <div class="col-auto">-</div>
                    <div class="col">
                      <input
                        type="text"
                        class="form-control"
                        name="userPhoneThird"
                        value="<%= phoneThird %>"
                        ${statusDisabled}
                      />
                    </div>
                    --%>
                  </td>
                </tr>
                <tr>
                  <th>주소</th>
                  <td>
                    <input
                      type="text"
                      class="form-control"
                      name="ADDRESS"
                      value="${resultMap.ADDRESS}"
                      ${statusDisabled}
                    />
                    <div class="row d-flex flex-row align-items-center mt-1">
                      <div class="col">
                        <input
                          type="text"
                          class="col form-control"
                          name="ADDRESSADD"
                          value="${resultMap.ADDRESSADD}"
                          ${statusDisabled}
                        />
                      </div>
                      <div class="col-auto">[나머지주소입력]</div>
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>가입일자 </th>
                  <td>
                    <input class="form-control w-50" type="date"
                    name="JOIN_DATE" value="${resultMap.JOIN_DATE}" ${statusDisabled} />
                    <div class="invalid-tooltip"></div>
                  </td>
                </tr>
                <tr>
                  <th>설문여부 </th>
                  <td>
                    <input class="form-check-input" type="checkbox"
                    name="SURVEYED" value="${resultMap.SURVEYED}"
                    ${resultMap.SURVEYED ==
                      "Y" ? "checked" : ""}
                    ${statusDisabled} />
                    <label for="SURVEYED" class="form-check-label"
                    >예</label
                  >
                    
                    <div class="invalid-tooltip"></div>
                  </td>
                </tr>
              </table>
            </div>
            <div class="text-center">
              <button class="btn btn-lg btn-outline-dark fw-bold w-25 m-4" type="submit">${form_action}</button>
            </div>
          </div>
        </div>
      </form>
    </main>
    <%@ include file= "footer.jsp"  %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
