<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
  crossorigin="anonymous"
/>
<div class="container">
  <td>
    <form action="/toySpringboots/form" method="get">
      <button class="btn btn-info">Form</button>
    </form>
  </td>
  <table class="table table-striped table-hover table-bordered">
    <thead>
      <tr class="text-center">
        <th><input type="checkbox" id="selectall" /></th>
        <th>사용자 이름</th>
        <th>사용자 ID</th>
        <th>사용자 PASSWORD</th>
        <th>사용자 전화번호</th>
        <th>사용자 E-MAIL</th>
        <th>사용자 주소</th>
        <th>사용자 가입일</th>
        <th>사용자 설문여부</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
        <tr>
          <td class="text-center">
            <input type="checkbox" class="checkbox" name="USER_ID" />
          </td>
          <td>${resultData.NAME}</td>
          <td>
            <form
              action="/toySpringboots/edit/${resultData.USER_ID}"
              method="get"
            >
              <button class="btn btn-link viewPopup">
                ${resultData.USER_ID}
              </button>
            </form>
          </td>
          <td>${resultData.PASSWORD}</td>
          <td>${resultData.PHONE_NUMBER}</td>
          <td>${resultData.USER_EMAIL}</td>
          <td>${resultData.ADDRESS}, ${resultData.ADDRESSADD}</td>
          <td>${resultData.JOIN_DATE}</td>
          <td>${resultData.SURVEYED}</td>
          <td>
            <form
              action="/toySpringboots/delete/${resultData.USER_ID}"
              method="post"
            >
              <button class="btn btn-outline-info">Delete</button>
            </form>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
<!-- /.table-responsive -->
