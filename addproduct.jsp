<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css">
    <style>
        *{
            padding:0px;
            margin:0px;
            box-sizing: border-box;
        }
        body{
            background-color: #fff;
        }
        .row{
            background-color: #fff(246, 29, 25);
            /* width:1%; */
            
        }
        img{
            border-radius:30px;
            margin: 20px;
        }
        form{
            margin-top: 50px;
            margin-left: 350px;
        }
        .form-row{
            margin:10px;
            box-shadow:2px solid black;
        }
        .btn1{
            border:0px;
            outline:none;
            height: 30px;
            width:auto;
            margin-left:10px;
            background-color: black;
            color:white;
            border:3px;
            font-weight: bold;
            margin-left:10px;
        }
        .btn1:hover{
            background-color: white;
            color:black;
        }
        #email{
            margin-bottom:20px;
        }
        h1{
            margin-bottom:30px;
        }
        h1:hover{
            color:blue;
        }
        input{
            padding:5px;
        }
        #x{
            margin-left:15px;
        }
    </style>
</head>
    <% String email = String.valueOf(session.getAttribute("email")); %>
    <% if(email.equals("sandeeprajakjbp2002@gmail.com")){ %>
        <section class="form mx-4 my-5">
            <div class="container">
                <div class="row gy-0 gx-0 shadow">
                    <div class="col-md-5">
                        <img src="images/logoforcarimage3.jpg" class="image-fluid shadow" height="500" alt="">
                    </div>
                    <div  class="col-md-7" id="aa">
                        <form action="addproduct.do" method="post" width="auto" enctype="multipart/form-data">
                            <h1>Khilona.com</h1>
                            <div class="form-row">
                                <div class="col-sm-7">
                                    <input type="file" placeholder="File Image" name="file" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-sm-7">
                                    <input type="text" placeholder="Toy Name" name="name" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-sm-7">
                                    <input type="number" name="price"  placeholder="price"  required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-sm-7">
                                    <input type="text" placeholder="Details" name="details" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-sm-7">
                                    <input type="Number" placeholder="min_age" name="min_age" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-sm-7">
                                    <input type="Number" placeholder="discount" name="discount" required>
                                </div>
                            </div>
                            <!-- <div class="form-row">
                                <div class="col-sm-7">
                                    <input type="Date" placeholder="your date of birth" id="udob" required>
                                </div>
                            </div> -->
                            <div class="form-row">
                                <div class="col-sm-7">
                                    <input type="submit" value="Add Prduct" class="btn1" >
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    <% } else { %>
        <div>
            <h1>Please don't do these kinds of things....Not Good....</h1>
        </div>
    <% } %>
</body>
</html>