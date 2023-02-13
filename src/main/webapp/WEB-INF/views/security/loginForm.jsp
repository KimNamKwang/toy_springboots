<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Please sign in</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet"
            crossorigin="anonymous">
    </head>

    <body>
        <div class="container">
            <c:if test="${not empty param.fail}">
                <div>
                    <font color="red"> Login Fail ! </font>
                </div>
                <br />
            </c:if>

            <form class="form-signin" method="post" action="/login">
                <h2 class="form-signin-heading">* We made * Please sign in</h2>
                <p>
                    <label for="username" class="sr-only">Username</label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="Username"
                        required="" autofocus="" value="test_01">
                </p>
                <p>
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password"
                        required="" value="pw123">
                </p>
                <%-- 아래의 _csrf는 post방식에 무조건 들어간다. crossorigin(restFul방식) 처럼 사용자를 검증한다. session과 csrf로 검증. <input
                    name="_csrf" type="hidden" value="3a05f0d6-bbab-419d-9ab0-25cdb6df909e">
                    우리는 사용하지 않아서 주석처리
                    --%>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>
        </div>
    </body>

    </html>