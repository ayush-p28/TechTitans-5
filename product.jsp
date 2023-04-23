<%@ page import="models.User" %>
<%@ page import="models.Product" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css">

    
</head>
<body>
  
    <% ArrayList<Product> product = (ArrayList<Product>)session.getAttribute("list"); %>

    <% if(!product.isEmpty()) { %>
        <table border="1" align="center" width="auto">
            <tr>
                <th>Product Id</th>
                <th>img</th>
                <th>Name</th>
                <th>Price</th>
                <th>details</th>
                <th>stock</th>
                <th>min_age</th>
                <th>discount</th>
                <th>Actions</th>
            </tr>
    
            <% int i = 0; %>
    
            <% for(Product produc : product) { %>
                <tr>
                    <td><%= produc.getProductId()  %></td>
                    <td><a href="#" id="anchor"><img src="show_product.do?name=<%= produc.getImg() %>" height="100px" alt=""></a></td>
                    <td><%= produc.getName() %></td>
                    <td><%= produc.getPrice() %></td>
                    <td><%= produc.getDetails() %></td>
                    <td><%= produc.getStock() %></td>
                    <td><%= produc.getMinAge() %></td>
                    <td><%= produc.getDiscount() %></td>
                    <td><a href="#"><i class="far fa-edit"></i></a></td>
                    &nbsp;
                    <td><a href="deletproductfast.do?pro_id=<%= produc.getProductId() %>"><i class="fas fa-trash"></i></a></td>
                </tr>
            <% } %>
            <tr>
                <td colspan="8" align="center">
                    <a href='addproduct.jsp'>Add Products</a>
                </td>
            </tr>
        </table>    
    <% } %>
    <script>
        var anchor = documnet.querySelector("#anchor");
    </script>
</body>
</html>