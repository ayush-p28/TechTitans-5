<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .row mt-2{
            cursor:move;
        }
        img:hover{
            transition: 0.09s;
            height:auto;
            box-shadow: 5px 5px 5px 5px;
            color:black;
        }
        img{
            margin:5px;
            padding:1px;
            width: 100%;
            height:auto;
        }
        #aaa{
            font-weight: bolder;
            font-style: italic;
            font-size: 25px;
            margin-top: 6%;
            color:rgb(2, 21, 2);
        }
        #a12{
            margin-left: auto;
        }
        #nav{
            margin-top : 5px;
        }
        #bbb{
            padding-top:20px;
            color:rgb(6, 20, 22);
        }
        .rounded{
            width: 300px;
            height: 250px;
            border: 3px solid #ccc;
            background: #eee;
            margin: auto;
            padding: 15px 10px;
        }
    
    </style>
</head>
<body>
    <div class="container-md border">
        <!-- Welcome line -->
        <div class="row mt-2">
            <div class="col-md-12 bg-dark text-white text-center">
                <h1>WELCOME TO XYZ.com</h1>
            </div>
        </div>
    
        <!-- Search,UserLogo, -->
            <div class="row mt-2 mx-auto text-center">
                <div class="col-md-4">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light" id="nav">
                        <div class="container-fluid">
                        <a class="navbar-brand" href="#">Khilona</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="next.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="feedback.jsp">feedbacks</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Pricing</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" tabindex="-1">about</a>
                            </li>
                            </ul>
                        </div>
                        </div>
                    </nav>
                </div>
                <div class="col-md-4 bg-white text-center p-2">
                    <input type="search">
                    <a href="#"><i class="fa fa-search bg-warning" aria-hidden="true"></i></a>
                </div>
    
                <div class="col-md-4 text-center">
                    <!-- UserICON -->
                    <a href="#"><i class="fa fa-user-circle fa-lg mt-3" aria-hidden="true"></i></a>
                </div>
            </div>

            <div class="row mt-2">
                <div class="row mt-2">
                    <div class="col-md-12 text-center">
                        <div class="row">
                            <div class="col mx-auto text-center">
                                <img src="imageswali/b (1).jpg" id="a11" height="80px">
                            </div>
                            <div class="col mx-auto text-center">
                                <img src="imageswali/b (66).jpg" id="a12" height="80px">
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mx-auto text-center">
                                <img src="imageswali/b (1).jpg" id="a13" height="80px">
                            </div>
                            <div class="col mx-auto text-center">
                                <img src="imageswali/b (66).jpg" id="a14" height="80px">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="row mt-2" id="pro_x">
            <div class="col-md-3 text-center m-1 p-1">
                <a href="product.jsp"><img src="images/8.jpg" height="80px" onclick=""></a>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
                <br>
                <img src="images/9.jpg" height="80px">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing.</p>
            </div>
            <table id="tb1">
    
            </table>
            <div class="col mx-auto text-center">
                <div id="a21"></div>
            </div>
        </div>
        
        <!-- footer Part -->
    
        <div>
            <footer class="mainfooter" role="contentinfo">  
                <div class="footer-middle">  
                <div class="container">  
                <div class="row">  
                    <div class="col-md-3 col-sm-6">  
                    <div class="footer-pad">  
                        <h4> Footer Heading 1</h4>  
                        <ul class="list-unstyled">  
                        <li> <a href="logout.do"> Logout </a> </li>  
                        <li> <a href="#"> </a> </li>  
                        <li> <a href="#">Payment Center</a></li>  
                        <li> <a href="#"> Contact Directory </a></li>  
                        <li> <a href="#">Forms</a></li>  
                        <li> <a href="#">News and Updates</a></li>  
                        <li> <a href="#">FAQs</a></li>  
                        </ul>  
                    </div>  
                    </div>  
                    <div class="col-md-3 col-sm-6">  
                    <div class="footer-pad">  
                        <h4> Footer Heading 2</h4>  
                        <ul class="list-unstyled">  
                        <li><a href="#"> Blog </a> </li>  
                        <li><a href="#">Accessibility</a> </li>  
                        <li><a href="#">Disclaimer</a></li>  
                        <li><a href="#">Privacy Policy</a></li>  
                        <li><a href="#">FAQs</a></li>  
                        <li><a href="#">Webmaster</a></li>  
                        </ul>  
                    </div>  
                    </div>  
                    <div class="col-md-3 col-sm-6">  
                    <div class="footer-pad">  
                        <h4> Footer Heading 3 </h4>  
                        <ul class="list-unstyled">  
                        <li> <a href="#"> Parks and Recreation </a> </li>  
                        <li> <a href="#"> Public Works </a> </li>  
                        <li> <a href="#">Police Department</a> </li>  
                        <li> <a href="#"> Fire </a> </li>  
                        <li> <a href="#"> Mayor and City Council </a> </li>  
                        </ul>  
                    </div>  
                    </div>  
                    <div class="col-md-3">  
                        <h4> Follow Us </h4>  
                        <div class="row"> 
                                <div class="col ">
                                    <a href="#"><i class="fab fa-facebook m-1"></i></a>
                                    <a href="#"><i class="fab fa-linkedin-in m-1"></i></a>
                                    <a href="#"><i class="fab fa-youtube m-1"></i></a>
                                    <a href="#"><i class="fab fa-twitter m-1"></i> </a> 
                                </div>
                        </div>
                        <!-- <ul class="social-network social-circle">  
                        <li> <a href="#"><i class="fab fa-facebook"></i></a></li>  
                        <li> <a href="#"><i class="fab fa-linkedin-in"></i></i> </a> </li>  
                        <li> <a href="#"><i class="fab fa-youtube"></i></a> </li>  
                        <li> <a href="#"><i class="fab fa-twitter"></i> </a> </li> 
                        </ul>               -->
                </div>  
                </div>   
                </div>  
                </div>  
            </footer>  
        </div>
    </div>
    <script>
        var x = document.getElementById('a11');
        var y = document.getElementById('a12');
        var z = document.getElementById('a13');
        var a = document.getElementById('a14');
        function changeImage() {
                x.src = 'imageswali/b ('+ i-- +').jpg';;
                if(i == 2){
                    i = 66;
                }
        }
        var j = 2;
        function changeImageBack() {
                y.src = 'imageswali/b ('+ j++ +').jpg';
                if(j == 66){
                    j = 2;
                }
        }
        var k = 66;
        function changeThird(){
            z.src = 'imageswali/b ('+ k-- +').jpg';
            if(k == 2){
                k = 66;
            }
        }
        var l = 5;
        function changeForth(){
            a.src = 'imageswali/b ('+ l++ +').jpg';
            if(l == 66){
                l = 1;
            }
        }
        setInterval(()=>{
            changeImage();
            changeImageBack();
            changeThird();
            changeForth();
        },1000);
        var btn_pro = document.querySelector('#btn_pro');
        var test = document.querySelector("#a21");
        var pro_x = document.querySelector("#pro_x");
        var tb1 = document.querySelector("#tb1");
        var i = 61 ;
    
            var show_req='';
            
            const showRecord = () => {
                show_req = new XMLHttpRequest();
                
                show_req.open('GET', 'showproduct.do?TAG='+1, true);
                
                show_req.addEventListener('readystatechange', () => {
                    if(show_req.readyState == 4 && show_req.status == 200) {
                        // console.log(show_req.responseText);
                        const records = JSON.parse(show_req.responseText);
                        console.log(records);
                        pro_x.innerHTML='';
                        let i=0;
                        for(var pro_duct of records){
                            let row = document.createElement('div');
                            // row.className='row mt-2';
                            row.className='row';
                            let j = 0;
                            for(var prop in pro_duct){
                                let col = document.createElement('div');
                                col.className='col text-center m-1 p-1';
                                if(!(prop == "img")){
                                    col.innerHTML = pro_duct[prop];
                                }
                                if(!(prop == "img")){
                                    col.id = 'aaa';
                                }else{
                                    col.id='bbb';
                                }
                                // console.log(prop);
                                if(prop === "name"){
                                    row.append(col);
                                }else if(prop == "product_Id"){
                                    col.style.display='none';
                                    row.append(col);
                                }else if(prop == "price"){
                                    row.append(col);
                                }else if(prop == "img"){
                                    var anchor = document.createElement('a');
                                    var img = document.createElement('img');
                                    anchor.append(img);
                                    anchor.href = 'details.do?product_id='+pro_duct.product_Id+'&name='+pro_duct.name+'&price='+pro_duct.price+'&img='+pro_duct.img+'&details='+pro_duct.details;
                                    
                                    img.src = "show_product.do?name="+pro_duct[prop];
                                    img.height = "200px";
                                    img.class="rounded mx-auto d-block";
                                    
                                    col.append(anchor);
                                    row.append(col);
                                }
                            }
                            pro_x.append(row);
                            pro_x.style.border='1 px solid red';
                        }
                    }else{
                        // console.log("+++++++++++++++++++++");
                    }
                });
    
                show_req.send();
        };
    
        showRecord();
        // btn_pro.addEventListener('click', showRecord);
    
    </script>
</body>
</html>