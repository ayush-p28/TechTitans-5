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
            background-image: url(imageswali/b\ \(48\).jpg);
        }
        form{
            margin-top:470px;
        }
        img{
            border-radius:30px;
            margin: 20px;
        }
        
        img:hover{
            transition: 0.09s;
            box-shadow: 5px 5px 5px 5px;
        }
        
        #submit_fb{
            border:0px;
            padding:2px;
            outline:none;
            height: 30px;
            width:auto;
            background-color: rgb(15, 16, 14);
            color:white;
            border:3px;
            font-weight: bold;
            margin:10px;
        }
        #submit_fb:hover{
            background-color: white;
            color:rgb(19, 169, 188);
        }
    </style>
</head>
<body>
    <section class="form mx-4 my-5">
        <div class="container-md ">
                <div class="row mt-2">
                    <div class="col-md-12 text-center">
                        <div class="row">
                            </div class="col mx-auto text-center">
                                <form action="next.jsp" class="mx-auto text-center">
                                    <input type="text" name="uname"  placeholder="your feedback">
                                    <br>
                                    <input type="submit" id="submit_fb"  value="submit feedback">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </section>
</body>
</html>