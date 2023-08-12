<%-- 
    Document   : index.jsp
    Created on : Aug 11, 2023, 5:34:15 PM
    Author     : sasit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    Cookie cookie = null;
    Cookie[] cookies = null;

    // Get an array of Cookies associated with the this domain
    cookies = request.getCookies();

    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if(cookies[i].getName().equals("username")){
                cookie = cookies[i];
            }    
        }
    }


%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- bootstrap link -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

        <!-- CSS stylesheet -->
        <link rel="stylesheet" href="./Styles/home.css">
        <!-- ----------------------------------------------------------------- -->
        <!-- font awesome link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
              />
        <!-- Title -->
        <title>Home|CinesynC</title>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
    </head>

    <body>
        <!-- bootstrap link -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

        <!-- bootstrap link  end -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light bg-color navvr fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand logog" href="./index.html"><img src="./images/logo.png" alt="logo" style="height:50px; width: 100px;"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="./index.html"><i
                                    class="fa-solid fa-house  icoon"></i>Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="./About_us.jsp"><i class="fa-solid fa-hands-bound icoon"></i>About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="./Categories.jsp"><i class="fa-solid fa-film icoon"></i>Categories</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link active " href="./Contact_us.jsp"><i class="fa-solid fa-headset icoon"></i>Contact Us</a>
                        </li>
                    </ul>
                    <form class="d-flex ms-auto" role="search">
                        <input class="form-control me-2 bg-light glowing-border w-200 siz" type="search" placeholder="Search..." required aria-label="Search">
                        <button class="btn btn-block btn-lg glow-button btn-light" type="submit"><i
                                class="fa-solid fa-magnifying-glass  fa-lg"></i></button>
                    </form>
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-but">
                            <a class="btn btn-outline-dark glow-button button-87 " href="./subscribe.jsp"><i
                                    class="fa-solid fa-user icoon"></i>Subscribe</a>
                        </li>
                        <li class="nav-but">
                            <a class="btn btn-outline-dark glow-button button-87 " href="./login.jsp"><i
                                    class="fa-solid fa-user icoon"></i>Login</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

        <!-- Slider -->

        <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
                <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
                <li data-bs-target="#myCarousel" data-bs-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="slide">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./images/harrpotter-slider.png" alt="Image 1" style="height:355px" width="1440px">
                        <div class="carousel-caption">
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="./images/slider-scales.jpg" alt="Image 2" style="height:355px" width="1440px">
                        <div class="carousel-caption">

                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="./images/slider2.jpg" alt="Image 3" style="height: 355px" width="1440px">
                        <div class="carousel-caption">

                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="./images/slider3.jpg" alt="Image 4" style="height: 355px" width="1440px">
                        <div class="carousel-caption">

                        </div>
                    </div>
                </div>
            </div>


            <!-- Left and right controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
        <script>
            $(document).ready(function () {
                $('.carousel').carousel({
                    interval: 3000 // Change image every 3 seconds
                });
            });
        </script>

        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

        <!-- Viewers Card -->
        <!--1st row-->
        <div class="container contgap ">
            <div class="row cardcontainer">
                <div class="col">
                    <div class="card cardWrap ">
                        <img src="./images/viewers-disney.png" class="card-img-top" alt="Image 1">

                    </div>
                </div>
                <div class="col">
                    <div class="card cardWrap ">
                        <img src="./images/viewers-marvel.png" class=" card-img-top " alt="Image 2 ">

                    </div>
                </div>
                <div class="col">
                    <div class="card cardWrap ">
                        <img src="./images/viewers-national.png" class=" card-img-top " alt="Image 3 ">

                    </div>
                </div>
                <div class="col">
                    <div class="card cardWrap ">
                        <img src="./images/viewers-starwars.png " class="card-img-top " alt="Image 4 ">

                    </div>
                </div>

            </div>
        </div>

        <!--2nd row-->
        <div class="container contgap ">
            <div class="row cardcontainer">
                <div class="col">
                    <div class="card cardWrap ">
                        <img src="./images/viewers-pixar.png" class="card-img-top" alt="Image 1">

                    </div>
                </div>
                <div class="col">
                    <div class="card cardWrap ">
                        <img src="./images/flix.png" class=" card-img-top " alt="Image 2 ">

                    </div>
                </div>
                <div class="col">
                    <div class="card cardWrap ">
                        <img src="./images/viewers-starwars.png" class=" card-img-top " alt="Image 3 ">

                    </div>
                </div>
                <div class="col">
                    <div class="card cardWrap ">
                        <img src="./images/viewers-disney.png" class="card-img-top " alt="Image 4 ">

                    </div>
                </div>

            </div>
        </div>


        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->


        <!----------- Footer ------------>
        <footer class="footer-bs">
            <div class="row ">
                <div class="col-md-3 footer-brand animated fadeInLeft ">
                    <img src="/images/logo.png " alt="logo " style="height:70px; width: 110px; ">
                    <p>Suspendisse hendrerit tellus laoreet luctus pharetra. Aliquam porttitor vitae orci nec ultricies. Curabitur vehicula, libero eget faucibus faucibus, purus erat eleifend enim, porta pellentesque ex mi ut sem.</p>
                    <p>© 2007 CinesynC, All rights reserved</p>
                </div>
                <div class="col-md-4 footer-nav animated fadeInUp ">
                    <h4>Menu —</h4>

                    <div class="col-md-6 ">
                        <ul class="list ">
                            <li><a href="./index.html"><i class="fa-solid fa-house icoon "></i>Home</a></li>
                            <li><a href="./About_us.jsp"><i class="fa-solid fa-hands-bound icoon "></i>About Us</a></li>
                            <li><a href="./Categories.jsp"><i class="fa-solid fa-book icoon "></i>Categories</a></li>
                            <li><a href="./Contact_us.jsp"><i class="fa-solid fa-headset icoon "></i>Contact Us</a></li>
                            <li><a href="# "><i class="fa-solid fa-chalkboard-user icoon "></i>Terms & Condition</a></li>
                            <li><a href="# "><i class="fa-solid fa-lock icoon "></i>Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2 footer-social ">
                    <h4>Follow Us</h4>
                    <ul>
                        <li><a href="# "><i class="fa-brands fa-facebook fa-2xl socialicon "></i></a></li>
                        <li><a href="# "><i class="fa-brands fa-twitter fa-2xl socialicon "></i></a></li>
                        <li><a href="# "><i class="fa-brands fa-instagram fa-2xl socialicon "></i></a></li>
                        <li><a href="# "><i class="fa-brands fa-pinterest fa-2xl socialicon "></i></a></li>
                        <li><a href="# "><i class="fa-brands fa-youtube fa-2xl socialicon "></i></a></li>
                    </ul>
                </div>
                <div class="col-md-3 footer-ns animated fadeInRight ">
                    <h4>Newsletter</h4>
                    <p>A rover wearing a fuzzy suit doesn’t alarm the real penguins</p>
                    <p>
                    <div class="input-group ">
                        <input class="form-control me-2 bg-light  glowing-border w-200 siz " type="search " placeholder="Type here..." required aria-label="Search ">
                        <span class="input-group-btn ">
                            <button class="btn btn-block btn-lg glow-button  " type="submit "><i
                                    class="fa-solid fa-envelope  fa-xl "></i></button>
                        </span>
                    </div>
                    <!-- /input-group -->
                    </p>
                </div>
            </div>
            <hr>
            <span class="align-items-center justify-content-center d-flex ">© 2007 CinesynC, All rights reserved</span>
        </footer>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
    </body>
</html>