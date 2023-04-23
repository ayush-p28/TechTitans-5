<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--Bootstrap CDN-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

    <style>
        #fr{
            padding-top: 5px;
            margin-top: 10px;;
        }
        body {
            /* background-color: hsl(25, 100%, 94%); */
            /* background-color: rgb(154, 154, 236); */
            background-color: #8EC5FC;
            background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);
        }

        .apna_color {
            color: hsl(26, 100%, 48%);
        }

        #mainNav a:hover {
            color: hsl(26, 100%, 55%);
        }

        .nav-link:after {
            content: "";
            display: block;
            height: 3px;
            background: hsl(26, 95%, 49%);
            transition: width 0.3s ease 0s, left 0.3s ease 0s;
            width: 0;
        }

        .nav-link:hover:after {
            color: hsl(26, 95%, 49%);
            width: 100%;
        }

        .img-slid {
            border-radius: 30px;
        }

        .blog-image {
            margin-left: -150px;
        }

        .btn-orange {
            color: white;
            background-color: hsl(26, 95%, 49%);

        }

        #cart_btn:hover {
            color: grey;
        }

        #footer p {
            margin: 5px 0px;
        }

        #footer {
            background-image: url("images/world_pattern.svg");
            background-color: #2D2B3A;
            background-repeat: no-repeat;
            background-position: center bottom;
        }

        .copyright {
            background-color: #2D2B3A;
        }

        .section-head {
            color: #000;
            text-align: center;
            margin-bottom: 40px;
        }

        .section-head:after {
            background: #e74c3c;
            content: "";
            display: block;
            width: 100px;
            height: 3px;
            margin: 20px auto;
        }

        .timez {
            border-top: 5px solid #d20909;
            position: relative;
            bottom: 0;
            transition: bottom ease 0.5s;
        }
        .timeza {
            border-top: 5px solid #d20909;
            position: relative;
            bottom: 0;
        }

        .timez img {
            padding: 24px;
            transition: all linear 0.25s;
        }

        .timez:hover img {
            padding: 30px;
        }

        .timez:hover {
            bottom: -10px;
            background-color: #f5f0f0;
        }

        .timez:hover h5 {
            color: #d20909;
        }

        #myVideo {
            position: initial;
            right: 140px;
            bottom: -301px;
            min-width: 9%;
            min-height: 31%;
        }

        /* Add some content at the bottom of the video/page */
        .content {
            position: fixed;
            bottom: 0;
            background: rgba(26, 205, 246, 0.5);
            color: #f1f1f1;
            width: 100%;
            padding: 20px;
        }

        /* Style the button used to pause/play the video */
        #myBtn {
            margin-left: auto;
            margin-right: auto;
            width: 200px;
            font-size: 18px;
            padding: 10px;
            border: none;
            background: #000;
            color: #fff;
            cursor: pointer;
        }

        video {
            width: 100%;
            height: auto;
        }

        #myBtn:hover {
            background: #ddd;
            color: black;
        }

        #hh:hover {
            background: rgb(255, 0, 98);
            color: rgb(24, 255, 255);
        }

        h1,
        p {
            text-align: center;
        }
/*     
   
    #aaa{
        font-weight: bolder;
        font-style: italic;
        font-size: 25px;
        margin-top: 6%;
        color:rgb(2, 21, 2);
    }
    #bbb{
        padding-top:20px;
        color:rgb(6, 20, 22);
    } */
    </style>
</head>

<body>
    <!-- Button trigger modal -->
    <% String email = request.getParameter("email"); %>
    <% email = String.valueOf(session.getAttribute("email")); %>
    <% String seller = request.getParameter("seller"); %>
  

    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow sticky-top py-2" id="mainNav">

        <a href="#" class="navbar-brand text-uppercase font-weight-bold">
            <img src="Screenshot 2023-04-21 231027.png" height="50" alt="" class="mr-1">

        </a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#header_options">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="header_options">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a href="" class="nav-link text-uppercase font-weight-bold">Home</a>
                </li>

                <li class="nav-item dropdown megamenu">
                    <a class="nav-link text-uppercase font-weight-bold" href="#trnding-coll">
                        Collections
                    </a>
                </li>
                <li class="nav-item dropdown megamenu">
                        <a type="button" class="nav-link text-uppercase font-weight-bold" href="#" id="repairbtn">Reapair</a>
                </li>
                <li class="nav-item dropdown megamenu">
                        <a class="nav-link text-uppercase font-weight-bold" href="replace.jsp">
                            Replace
                        </a>
                </li>
                <li class="nav-item dropdown megamenu">
                    <a class="nav-link text-uppercase font-weight-bold" href="#">
                        About
                    </a>
                </li>
                <li class="nav-item dropdown megamenu">
                    <a class="nav-link text-uppercase font-weight-bold" href="#">
                        Contact
                    </a>
                </li>
                
                <!-- <li class="nav-item dropdown megamenu">
                </li> -->
            </ul>
            <a class="nav-link text-uppercase font-weight-bold ml-auto" href="login.jsp">
                login
            </a>
            <a class="btn btn-orange font-weight-bold" id="cart_btn" href="login.jsp">
                <i class="bi bi-cart"></i> Cart
            </a>
        </div>
    </nav>

    <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Apply These Simple Steps</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-md-6">
                <div class="card bg-light mb-3" style="max-width: 18rem;">
            <div class="card-header">Check 1</div>
                    <div class="card-body">
                      <h5 class="card-title"> Battery Wires Checkup</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                  </div>
            </div>
            <div class="col-md-6">
                <div class="card bg-light mb-3" style="max-width: 18rem;">
                    <div class="card-header">Header</div>
                    <div class="card-body">
                      <h5 class="card-title">Light card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                  </div>
            </div>
            <div class="col-md-6">
                <div class="card bg-light mb-3" style="max-width: 18rem;">
                    <div class="card-header">Header</div>
                    <div class="card-body">
                      <h5 class="card-title">Light card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                  </div>
            </div>
            <div class="col-md-6">
                <div class="card bg-light mb-3" style="max-width: 18rem;">
                    <div class="card-header">Header</div>
                    <div class="card-body">
                      <h5 class="card-title">Light card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                  </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" href="#" class="btn btn-primary" id="notworkbtn">Not Worked</button>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Apply These Simple Steps</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="login.do" method="post" id="fr">
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
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" href="#" class="btn btn-primary" id="sendbtn">Send</button>
        </div>
      </div>
    </div>
  </div>

    <section>
        <div class="container">
            <div class="row my-5">
                <div class="col offset-md-1">
                    <div class="bg-white mb-4 d-lg-flex shadow img-slid border border-warning">
                        <div class="blog-image d-none d-lg-block align-items-center p-1" data-aos="slide-right">
                            <img src="imgr/download.png" alt="" class="img-fluid img-slid">
                        </div>
                        <div class="blog-image d-block d-lg-none align-items-center p-1" data-aos="slide-right">
                            <img src="imgr/download.png" alt="" class="img-fluid img-slid">
                        </div>
                        <!-- <div class="d-block d-lg-none align-items-center p-3">
							<img src="shadowas.jpeg" alt="" class="img-fluid img-slid shadow" height="150px">
						</div> -->
                        <div class="p-2 blog-container" data-aos="slide-left">
                            <h4 class="mt-2 font-weight-bold">
                                <p class="text-dark">Toys King <strong
                                        class="apna_color text-uppercase">Branded Toys</strong> It provides services and modification in toys.. <br>as well as new products are available in cheap price.</p>
                            </h4>
                            <p class="text-muted">Toys are The Great Fun and if they are MODIFIED then they are outstanding.</p>
                            <div class="d-flex justify-content-between align-items-center border-top">
                                <div class="mt-4 mx-auto">
                                    <a href="#women-coll" class="btn btn-orange font-weight-bold">Explore Our Collection</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="pt-4">
        <div class="container px-lg-5" data-aos="fade-up">
            <!-- Cards -->
            <div class="row gx-lg-5">
                <div class="col-lg-4 col-xxl-4 mb-4">
                    <div class="card bg-light border-0 h-100">
                        <div class="card-body text-center p-4 p-lg-5 py-2 pt-lg-0">
                            <!-- <div class="d-inline-flex p-4 justify-content-center align-items-center bg-primary bg-gradient text-white border border-secondary rounded-lg"
                                ><i class="fa-solid fa-rocket" style="font-size: 20px;"></i></div> -->
                            <h2 class="fs-3 fw-bold">Repairable Toys</h2>
                            <p class="mb-0">we provide the service to repair toys and get service</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xxl-4 mb-4">
                    <div class="card bg-light border-0 h-100">
                        <div class="card-body text-center  p-4 p-lg-5 py-2 pt-lg-0">
                            <h2 class="fs-4 fw-bold">Replaceable</h2>
                            <p class="mb-0">Toys are repairable and replaceable if you want then you can...</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xxl-4 mb-4">
                    <div class="card bg-light border-0 h-100">
                        <div class="card-body text-center  p-2 p-lg-5 py-2 pt-lg-0">
                            <h2 class="fs-4 fw-bold">6 days delivery</h2>
                            <p class="mb-0">we promise to deliver your product within 6 days.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pt-4 mt-3 my-5" id="trnding-coll">
        <div class="container-fluid cards">
            <h2 class="text-center text-uppercase text-dark font-weight-bold section-head" data-aos="fade-up">Trending
                Collections
            </h2>
            <div class="row m-auto" data-aos="fade-up">

                <div class="col-10 owl-carousel owl-theme mx-auto mb-2 pb-2" id="owl-cor1">

                    <div class="item">
                        <div class="card timeza shadow-sm">
                            <div class="badge bg-success text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">
                                in-stock</div>
                            <img class="card-img-top p-2 img-fluid rounded" src="imgr/11.jpg" alt="..." />
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Hoka Bondi 8 R15 Modal 4X4 RC Car</h5>
                                    <div class="d-flex justify-content-center mt-2">
                                        <span>Rs. 350.00 25%off Rs. 250.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer pb-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="card timeza shadow-sm">
                            <div class="badge bg-success text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">
                                in-stock</div>
                            <img class="card-img-top p-2" src="imgr/13.jpg" alt="..." />
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Asics Gel-Excite trail running RC Car</h5>
                                    <div class="d-flex justify-content-center mt-2">
                                        <span>Rs. 950.00 15%off Rs. 750.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer pb-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="card timeza shadow-sm">
                            <div class="badge bg-success text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">
                                in-stock</div>
                            <img class="card-img-top p-2" src="imgr/2.jpg" alt="..." />
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Saucony ProGrid Triumph 4 RC Car</h5>
                                    <div class="d-flex justify-content-center mt-2">
                                        <span>$680.00 21% Rs. 555.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer pb-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="card timeza shadow-sm">
                            <div class="badge bg-success text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">
                                in-stock</div>
                            <img class="card-img-top p-2" src="imgr/4.jpg" alt="..." />
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Reebok Nano X2 TR Adventure RC Car</h5>
                                    <div class="d-flex justify-content-center mt-2">
                                        <span>$125.00 50% $250.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer pb-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="card timeza shadow-sm">
                            <div class="badge bg-success text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">
                                in-stock</div>
                            <img class="card-img-top p-2" src="imgr/5.jpg" alt="..." />
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Reebok Nano X2 TR Adventure RC Car</h5>
                                    <div class="d-flex justify-content-center mt-2">
                                        <span>$125.00 50% $250.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer pb-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="card timeza shadow-sm">
                            <div class="badge bg-success text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">
                                in-stock</div>
                            <img class="card-img-top p-2" src="imgr/6.jpg" alt="..." />
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Reebok Nano X2 TR Adventure RC Car</h5>
                                    <div class="d-flex justify-content-center mt-2">
                                        <span>$125.00 50% $250.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer pb-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="card timeza shadow-sm">
                            <div class="badge bg-success text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">
                                in-stock</div>
                            <img class="card-img-top p-2" src="imgr/7.jpg" alt="..." />
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Reebok Nano X2 TR Adventure RC Car</h5>
                                    <div class="d-flex justify-content-center mt-2">
                                        <span>$125.00 50% $250.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer pb-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="card timeza shadow-sm">
                            <div class="badge bg-success text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">
                                in-stock</div>
                            <img class="card-img-top p-2" src="imgr/b (3).jpg" alt="..." />
                            <div class="card-body p-2">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Reebok Nano X2 TR Adventure RC Car</h5>
                                    <div class="d-flex justify-content-center mt-2">
                                        <span>$125.00 50% $250.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer pb-2 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>

    <div class="container-fluid" data-aos="fade-up">
        <div class="row">
            <div class="col-10 mx-auto">
                <video autoplay muted loop id="myVideo" height="850px" class="p-2">
                    <source src="images/car.mp4" type="video/mp4" id="vid">
                </video>
            </div>
        </div>
    </div>

    
    <!-- <div class="row mt-2">
        <div class="row mt-2">
            <div class="col-md-12 text-center">
                <div class="row">
                    <div class="col mx-auto text-center" id="block_x">
                        <!-- <img src="imageswali/b (1).jpg" id="a11" height="80px">

                    </div>
                </div>
            </div>
        </div>
    </div> -->

    <section class="pt-4 mt-3 my-5" id="women-coll">
        <div class="container-fluid cards">
            <h2 class="text-center text-uppercase text-dark font-weight-bold section-head" data-aos="fade-up">2X2 RC
                Collections
            </h2>
            <div class="row m-auto" data-aos="fade-up" id="block_x">

                <!--PArt To BE Fetched-->
                <div class="col-md-3 p-1">  <!--divn1-->
                    <div class="card timez shadow-sm" > <!--divn2-->
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem"> <!--div1-->
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (8).jpg" alt="..." /> <!--div2-->
                        <div class="card-body p-2"> <!--div3-->
                            <div class="text-center"> <!--div4-->
                                <h5 class="font-weight-bold">Hoka Bondi 8 shoes</h5> <!--div5-->
                                <div class="d-flex justify-content-center mt-2"> <!--div6-->
                                    <span>$125.00 50% $250.00</span> <!--div7-->
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent"> <!--div8-->
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a> <!--div9-->
                            </div>
                        </div>
                    </div>
                </div>
                <!--till here-->
            </div>
        </div>
    </section>

    <section class="pt-4 mt-3 my-5" id="women-coll">
        <div class="container-fluid cards">
            <h2 class="text-center text-uppercase text-dark font-weight-bold section-head" data-aos="fade-up">4X4 RC
                Collections
            </h2>
            <div class="row m-auto" data-aos="fade-up">

                <!--PArt To BE Fetched-->
                <div class="col-md-3 p-1">
                    <div class="card timez shadow-sm">
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (8).jpg" alt="..." />
                        <div class="card-body p-2">
                            <div class="text-center">
                                <h5 class="fw-bolder">Hoka Bondi 8 shoes</h5>
                                <div class="d-flex justify-content-center mt-2">
                                    <span>Rs.525.00 50% $262.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-1">
                    <div class="card timez shadow-sm">
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (3).jpg" alt="..." />
                        <div class="card-body p-2">
                            <div class="text-center">
                                <h5 class="fw-bolder">Hoka Bondi 8 shoes</h5>
                                <div class="d-flex justify-content-center mt-2">
                                    <span>$125.00 50% $250.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-1">
                    <div class="card timez shadow-sm">
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (9).jpg" alt="..." />
                        <div class="card-body p-2">
                            <div class="text-center">
                                <h5 class="fw-bolder">Hoka Bondi 8 shoes</h5>
                                <div class="d-flex justify-content-center mt-2">
                                    <span>$125.00 50% $250.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-1">
                    <div class="card timez shadow-sm">
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (12).jpg" alt="..." />
                        <div class="card-body p-2">
                            <div class="text-center">
                                <h5 class="fw-bolder">Hoka Bondi 8 shoes</h5>
                                <div class="d-flex justify-content-center mt-2">
                                    <span>$125.00 50% $250.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-1">
                    <div class="card timez shadow-sm">
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (53).jpg" alt="..." />
                        <div class="card-body p-2">
                            <div class="text-center">
                                <h5 class="fw-bolder">Hoka Bondi 8 shoes</h5>
                                <div class="d-flex justify-content-center mt-2">
                                    <span>$125.00 50% $250.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-1">
                    <div class="card timez shadow-sm">
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (16).jpg" alt="..." />
                        <div class="card-body p-2">
                            <div class="text-center">
                                <h5 class="fw-bolder">Hoka Bondi 8 shoes</h5>
                                <div class="d-flex justify-content-center mt-2">
                                    <span>$125.00 50% $250.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-1">
                    <div class="card timez shadow-sm">
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (54).jpg" alt="..." />
                        <div class="card-body p-2">
                            <div class="text-center">
                                <h5 class="fw-bolder">Hoka Bondi 8 shoes</h5>
                                <div class="d-flex justify-content-center mt-2">
                                    <span>$125.00 50% $250.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 p-1">
                    <div class="card timez shadow-sm">
                        <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                            out-of-stock
                        </div>
                        <img class="card-img-top img-fluid p-2 rounded" src="imgr/b (3).jpg" alt="..." />
                        <div class="card-body p-2">
                            <div class="text-center">
                                <h5 class="fw-bolder">Hoka Bondi 8 shoes</h5>
                                <div class="d-flex justify-content-center mt-2">
                                    <span>$125.00 50% $250.00</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer pb-2 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--till here-->
            </div>
        </div>
    </section>


    <!-- <div class="container-fluid pt-5 pb-3 mt-5" data-aos="fade-up" id="footer">

        <div class="row small px-4">

            <div class="col-md-3">
                <% if(email.equals("NULL")){ %>
                    <jsp:include page="whensignedmalik.jsp" />
                <% } else { %>
                    <p>href="logout.do"> Logout </a> </p>
                <% } %>
                <h5 class="text-white my-4"><b>Trending</b></h5>
                <p><a class="text-muted" href="#">Trending's Collection</a></p>
                <p><a class="text-muted" href="#">2X2;s Collections</a></p>
                <p><a class="text-muted" href="#">4X4</a></p>
                <p><a class="text-muted" href="#">6 Wheel</a></p>
            </div>

            <div class="col-md-3">
                <h5 class="text-white my-4"><b>Service</b></h5>
                <p><a class="text-muted" href="#"></a></p>
                <p><a class="text-muted" href="#"></a></p>
                <p><a class="text-muted" href="#"></a></p>
                <p><a class="text-muted" href="#"></a></p>

            </div>

            <div class="col-md-3">
                <h5 class="text-white mt-4"><b>Upcoming</b></h5>
                <p><a class="text-muted" href="#">Cars</a></p>
                <p><a class="text-muted" href="#">trucks</a></p>
                <p><a class="text-muted" href="#">trains</a></p>
                <p><a class="text-muted" href="#">JCB</a></p>

            </div>

            <div class="col-md-3">
                <h5 class="text-white my-4"><b>Pages</b></h5>
                <p><a class="text-muted" href="#">About Us</a></p>
                <p><a class="text-muted" href="#">Contact Us</a></p>
                <p><a class="text-muted" href="#">DMCA</a></p>
                <p><a class="text-muted" href="#">Privacy Policy</a></p>
            </div>
        </div>

    </div> -->

    <div>
        <footer class="footer text-center" style="padding-top: 3rem;padding-bottom: 5rem;background-color: #2c3e50;color: #fff;">
            <div class="container">
                <div class="row">
                    
                    <div class="col-lg-4 mb-lg-0">
                        <h3 class="text-uppercase">Pages</h3>
                        <p class="lead mb-0">
                            <a href="../html/Privacy.html" class="text-reset">Privacy Policy</a>
                            <br />
                            <a href="../html/About.html" class="text-reset">About Us</a>
                            <br />
                            <a href="../html/Contatc.html" class="text-reset">Contact Us</a>
                            <br />
                            <a href="../html/Disclaimer.html" class="text-reset">Disclaimer</a>
                        </p>
                    </div>
                    
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h3 class="text-uppercase mb-4">Our Collections</h3>
                        <a class="btn btn-outline-light btn-social mx-1" href="#"><i class="fab fa-fw fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#"><i class="fab fa-fw fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#"><i class="fab fa-fw fa-linkedin-in"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#"><i class="fab fa-fw fa-dribbble"></i></a>
                    </div>
                    
                    <div class="col-lg-4">
                        <h3 class="text-uppercase mb-4">About KhiloneWala</h3>
                        <p class="lead">
                            <a href="https://ayush-p28.github.io/my-portfolio/" class="text-reset">Sandeep Rajak</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
        
        <div class="copyright py-4 text-center text-white" style="background-color: #1a252f;">
            <div class="container"><small>Copyright &copy; KhiloneWala 2023</small></div>
        </div>
    </div>


    
    <!-- <div class="content">
        <h1 id="hh">XYZ.com</h1>
        <p>Welcome User Please Enter to next button to get Entered </p>
        <form action="next.jsp?email=null&password=null" method="post" align="center">
            <input type="submit" value="NEXT" id="myBtn">
        </form>
    </div> -->
</body>

</html>

<script src="https://unpkg.com/aos@next/dist/aos.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"
    integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
    integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
    var repairbtn = document.querySelector('#repairbtn');
    repairbtn.addEventListener('click',()=>{
        console.log('helloooooo');
        $('#exampleModal').modal('show');
    });
    
    var notworkbtn = document.querySelector('#notworkbtn');
    notworkbtn.addEventListener('notworkbtn',()=>{
        $('#exampleModal').modal('hide');
        $('#exampleModal1').modal('show');
        
    });
    
    var sendbtn = document.querySelector('#sendbtn');
    sendbtn.addEventListener('click',()=>{
        $('#exampleModal1').modal('hide');
        
    })

    $('#owl-cor1').owlCarousel({
        loop: true,
        margin: 15,
        nav: true,
        autoplay:true,
        autoplayTimeout:2000,
        navText: ["<i class='fa-solid fa-angles-left'></i>", "<i class='fa-solid fa-angles-right'></i>"],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 4
            }
        }
    })

    AOS.init({
        offset: 170, // offset (in px) from the original trigger point
        delay: 30, // values from 0 to 3000, with step 50ms
        duration: 700, // values from 0 to 3000, with step 50ms
    });


    var show_reqq='';
                
                const shoowRecord = () => {
                    show_reqq = new XMLHttpRequest();
                    
                    show_reqq.open('GET', 'showproduct.do?TAG='+1, true);
                    
                    show_reqq.addEventListener('readystatechange', () => {
                        if(show_reqq.readyState == 4 && show_reqq.status == 200) {
                            // console.log(show_req.responseText);
                            const records = JSON.parse(show_reqq.responseText);
                            console.log(records);
                            // block_x.innerHTML='';
                            let i=0;
                            for(var pro_duct of records){
                                let row = document.createElement('div');
                                // row.className='row mt-2';
                                row.className='row';
                                let j = 0;
                                for(var prop in pro_duct){
                                    let col = document.createElement('div');
                                    col.className='col';
                                    if(!(prop == "img")){
                                        col.id = 'aaa';
                                    }else{
                                        col.id='bbb';
                                    }
                                    if(!(prop == "img")){
                                        col.innerHTML = pro_duct[prop];
                                    }
                                    // console.log(prop);
                                    if(prop == "img"){
                                        // block_x.innerHTML = "ghytu"
                                        var divn1 = document.createElement('div');
                                        divn1.classList.add('col-md-3','p-1');
                                        
                                        var divn2 = document.createElement('div');
                                        divn2.classList.add('card','timez','shadow-sm');
                                        
                                        var div1 = document.createElement('div');
                                        div1.classList.add('badge','bg-dark','text-white','position-absolute');
                                        div1.style.top = '0.5rem';
                                        div1.style.right = '0.5rem';
                                        div1.innerHTML = "out-of-stock";

                                        divn2.append(div1)
                                        
                                        var div2 = document.createElement('img');
                                        div2.classList.add('card-img-top','img-fluid','p-2','rounded');
                                        div2.src = "show_product.do?name="+pro_duct[prop];
                                        
                                        divn2.append(div2);
                                        
                                        var div3 = document.createElement('div');
                                        div3.classList.add('card-body','p-2');
                                        
                                        var div4 = document.createElement('div');
                                        div4.classList.add('text-center');
                                        
                                        var div6 = document.createElement('div');
                                        div6.classList.add('d-flex','justify-content-center','mt-2');
                                        // 7 ko 6
                                        // 5 ko 4 me  
                                                                              // 
                                        div3.append(div4);
                                        divn2.append(div3);
                                        
                                        var div8 = document.createElement('div');
                                        div8.classList.add('card-footer','pb-2','border-top-0','bg-transparent');
                                        
                                        var div9 = document.createElement('div');
                                        div9.classList.add('text-center');
                                        
                                        var div10 = document.createElement('a');
                                        div10.classList.add('btn','btn-outline-dark','mt-auto');
                                        div10.innerHTML = "Add To Cart";

                                        div9.append(div10);
                                        div8.append(div9);
                                        divn2.append(div8);


                                        divn1.append(divn2);
                                    }
                                    else if(prop === "name"){
                                        // row.append(col);
                                        var div5 = document.createElement('h5');
                                        div5.classList.add('font-weight-bold');
                                        div5.innerHTML = col.innerHTML;
                                        
                                        
                                    }else if(prop == "product_Id"){
                                        col.style.display='none';
                                        row.append(col);
                                    }else if(prop == "price"){
                                        // row.append(col);
                                        var div7 = document.createElement('span');
                                        div7.classList.add('d-flex','justify-content-center','mt-2');
                                        div7.innerHTML = col.innerHTML;
                                        
                                        
                                    }
                                }
                                
                                div4.append(div5);
                                div4.append(div6);

                                div6.append(div7);
                                block_x.append(divn1);
                                // block_x.append(div1);
                                // block_x.style.border='1 px solid red';
                            }
                        }else{
                            console.log("+++++++++++++++++++++");
                        }
                    });

                    show_reqq.send();
            };
        shoowRecord();

</script>
<!--Bootstrap JS Bundle-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
    integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
    crossorigin="anonymous"></script>