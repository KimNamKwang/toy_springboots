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
  <c:set var="form_action" value="update" />
  <c:if test="${empty resultMap}">
    <c:set var="form_action" value="insert" />
  </c:if>
  <form action="/toySpringboots/${form_action}" method="post">
    <div class="form-group form-row">
      <div class="col">
        <label>사용자 ID</label> <input class="form-control" type="text"
        name="USER_ID" value="${resultMap.USER_ID}" required ${form_action ==
        "update" ? "readonly" : ""} />
        <div class="invalid-tooltip"></div>
      </div>
    </div>
    <div class="form-group form-row">
      <div class="col">
        <label>사용자 이름 </label>
        <input
          class="form-control"
          type="text"
          name="NAME"
          value="${resultMap.NAME}"
          placeholder="사용자 이름을 입력하세요"
          required
          ${statusDisabled}
        />
        <div class="invalid-tooltip"></div>
      </div>
    </div>
    <div class="form-group form-row">
      <div class="col">
        <label>사용자 PASSWORD </label>
        <input
          class="form-control"
          type="text"
          name="PASSWORD"
          value="${resultMap.PASSWORD}"
          placeholder="사용할 비밀번호를 입력하세요"
          required
          ${statusDisabled}
        />
        <div class="invalid-tooltip"></div>
      </div>
    </div>
    <div class="form-group form-row">
      <div class="col">
        <label>사용자 전화번호</label>
        <input
          class="form-control"
          type="text"
          name="PHONE_NUMBER"
          value="${resultMap.PHONE_NUMBER}"
          placeholder="사용할 전화번호를 입력하세요"
          required
          ${statusDisabled}
        />
        <div class="invalid-tooltip"></div>
      </div>
    </div>
    <div class="form-group form-row">
      <div class="col">
        <label>사용자 E-MAIL</label>
        <input
          class="form-control"
          type="text"
          name="USER_EMAIL"
          value="${resultMap.USER_EMAIL}"
          placeholder="사용할 이메일 주소를 입력하세요"
          required
          ${statusDisabled}
        />
        <div class="invalid-tooltip"></div>
      </div>
    </div>

    <div class="form-group form-row">
      <div class="col">
        <label
          >주소
          <span class="text-muted"
            >(<spring:message code="text.option" />)
          </span></label
        >
        <textarea
          class="form-control"
          rows="3"
          name="ADDRESS"
          placeholder=""
          ${statusDisabled}
        >
${resultMap.ADDRESS }</textarea
        >
      </div>
      <div class="col">
        <label
          >상세주소
          <span class="text-muted"
            >(<spring:message code="text.option" />)
          </span></label
        >
        <textarea
          class="form-control"
          rows="3"
          name="ADDRESSADD"
          placeholder=""
          ${statusDisabled}
        >
${resultMap.ADDRESSADD }</textarea
        >
      </div>
    </div>
    <div class="form-group form-row">
      <div class="col">
        <div class="form-check">
          <input type="checkbox" class="form-check-input" name="SURVEYED"
          ${empty resultMap.SURVEYED ? '' : 'checked'} ${statusDisabled}>

          <label class="form-check-label">사용자 설문 여부</label>
        </div>
      </div>
    </div>

    <div class="row justify-content-between">
      <div class="col">
        <button class="btn btn-primary">${form_action}</button>
        <button class="btn btn-outline-info">List</button>
      </div>

      <div class="col text-right">
        <%--
        <button
          type="button"
          class="btn btn-secondary"
          data-dismiss="modal"
        ></button>
        --%>
      </div>
    </div>
  </form>
</div>
