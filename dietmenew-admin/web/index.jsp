<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <title>cms dashboard
        </title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="common/styles/custom.css" />
        <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <div class="wrapper">
            <div class="body-overlay"></div>
            <%@include file="common/widgets/sidenavbar.jsp" %>
            <div id="content">
                <%@include file="common/widgets/topnavbar.jsp" %>

                <div class="main-content">

                    <% if (request.getParameter("page") != null && request.getParameter("page").equals("dashboard")) { %>
                    <%@include file="WEB-INF/pages/home/homeCategoryRow.jsp" %>
                    <% } %>
                </div>

                <div class="container-fluid" style="width: 90%;">

                    <% if (request.getParameter("page") != null && request.getParameter("page").equals("users")) { %>
                    <%@include file="WEB-INF/pages/users/usersRow.jsp" %>
                    <% } %>

                    <% if (request.getParameter("page") != null && request.getParameter("page").equals("Default Meals")) { %>
                    <%@include file="WEB-INF/pages/default_meals/DefaultMeals.jsp" %>
                    <% }%>
                </div>

                <div class="container-fluid" style="width: 90%;">
                    <br><br>
                </div>
            </div>
        </div>
    </body>
</html>

