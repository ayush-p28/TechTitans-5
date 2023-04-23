<%@ page import="models.Product" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css">
    <style>
        img{
            
            width: 100%;
            height:auto;
        }
        #btn{
            margin:6px;
            margin-top: 10px;
            padding:5px;
        }
    </style>
</head>
<body>
    <div class="container-md border">
        <!-- Welcome line -->
        <div class="row mt-2">
            <div class="col-md-12 text-white text-center">
                <h1>WELCOME TO XYZ.com</h1>
            </div>
        </div>
        <% Product product = (Product)session.getAttribute("Productspecific"); %>
               
                <div class="row mt-2">
                    <div class="col-md-12 text-white text-center">
                        <img src="show_product.do?name=<%= product.getImg() %>" height="200px" alt="">
                    </div>
                    <div class="col-md-12 text-white text-center">
                        <button class="button" id="btn">Product Name: <%= product.getName() %></button>
                        <button class="button" id="btn">Product Price: <%= product.getPrice() %></button>
                    </div>
                </div> 
                <div class="row mt-2">
                    <div class="col-md-12 text-red text-center">
                       <h1>Details:</h1><%= product.getDetails() %>
                    </div>
                </div>
    </div>
    <script>
    
    </script>
</body>
</html>