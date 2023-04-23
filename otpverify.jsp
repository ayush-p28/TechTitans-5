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
        }
        img{
            border-radius:30px;
            margin: 20px;
        }
        
        img:hover{
            transition: 0.09s;
            height: auto;
            box-shadow: 5px 5px 5px 5px;
        }

        form{
            margin-top: 150px;
            margin-left: 250px;
        }
        .form-row{
            margin:10px;
            box-shadow:2px solid black;
        }
        .btn1{
            border:0px;
            outline:none;
            height: 30px;
            width:50%;
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
    </style>
</head>
<body>
    <section class="form mx-4 my-5">
        <div class="container">
            <div class="row gy-0 gx-0 shadow">
                <div class="col-lg-5">
                    <img src="images/logoforcarimage3.jpg" class="image-fluid shadow" alt="">
                </div>
                <div  class="col-lg-7" id="aa">
                    <form action="verify.do" method="post"  width="auto">
                        <h1>XYZ.com</h1>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" placeholder="opt" name="otp" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="submit" value="verify" class="btn1">
                            </div>
                        </div>
                        &nbsp;&nbsp;
                        <br>
                        <br>
                        <a href="forgot.jsp">forgot Password</a>
                        <p>Don't Have Any Account.. <br><a href="newaccount.jsp">Create An Account</a></p>
                        
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>