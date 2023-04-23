
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Document</title>
    <!-- <link rel="stylesheet" href="login.css"> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    
</head>
<body>

<div class="header">

    <!--Content before waves-->
    <div class="inner-header flex">
        
    
            <div class="row mt-5">
                <div class="card shadow px-5 pb-5 mb-3 text-dark mt-5 border border-dark" style="border-radius: 1rem;" id="modal_signin">
                    <form action="login.do" method="post">
                        <h2 class="font-weight-bold">SigIn</h2>

                        <div class="text-center my-2">
                            <p>Give your problems:</p>
                        
                          </div>

                          <div class="form-group">
                            <input type="text" class="form-control form-control-lg" name="nm" id="nm" placeholder="Name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control form-control-lg" name="details" placeholder="Details">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control form-control-lg" name="mbnum" placeholder="Mobile No.">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <input type="file" class="form-control" name="file" id="file" placeholder="please select images">
                        </div>
                        <textarea name="" id="" cols="30" rows="10"></textarea>
                        <button type="submit" class="btn btn-dark btn-lg btn-block">SignIn</button>
                    </form>
                    <a href="forgot.jsp" class="my-2">Forgot your password</a>
                    <p class="my-2">Not a member ? <a href="newaccount.jsp">create account</a></p>
                </div>
            </div>        
    </div>

    
    

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
</body>
</html>