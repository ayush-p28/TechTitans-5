<%@ page import="models.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css">

    
</head>
<body>
    
    <% String email = request.getParameter("email"); %>
    <% email = String.valueOf(session.getAttribute("email")); %>
    <% String seller = request.getParameter("seller"); %>
    <!-- <%= seller %>seller
    <%= email %>email -->

    
    <% if(email == "null"){ %>
        <%----to serve--%>
        <%-----include whenunsigned.jsp here--%>
        <jsp:include page="whenunsigned.jsp" />
        
    <% } else { %>

        <% if(email.equals("sandeeprajakjbp2002@gmail.com")){ %>
            <%---include malik here---%>
            <jsp:include page="whensignedmalik.jsp" />
        <% } else { %>
            <jsp:include page="signedinuser.jsp" />
        <% } %>
        
    <% } %>

</body>
</html>