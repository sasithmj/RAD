<%@page import="java.sql.*"%> <%@page contentType="text/html"
pageEncoding="UTF-8"%> <%@page session="true" %> <%@ page
import="java.io.*,java.util.*, javax.servlet.*" %> <%@ page
import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- bootstrap link -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
    />
    <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
    <!-- CSS stylesheet -->
    <link rel="stylesheet" href="./Styles/admin.css " />
    <link rel="stylesheet" href="./Styles/About_us.css " />
    <!-- ------------------------------------------------------------------->
    <!-- font awesome link -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
    <title>Admin Dashboard</title>
  </head>
  <body>
    <div class="sidebar">
      <a class="active" href="./admin.jsp">DashBoard</a>
      <a href="./insert.jsp">Add Movie</a>
      <a href="./view.jsp">View Movies</a>
      <a href="./search.jsp">Search Movies</a>
      <a href="./update.jsp">Update Movies</a>
      <a href="./AdminLogin.html">Log Out</a>
    </div>

    <div class="content">
      <div class="container mt-5">
        <h1 class="text-center h1hed">Admin Panel</h1>
        <br />
        <hr />
        <<<<<<< HEAD
        <h4 class="text-center">Movie Add</h4>
        <!-- Once the form is submitted, all the form data is forwarded to InsertBooks.jsp -->
        <form action="ImageUpload" method="POST" enctype="multipart/form-data">
          <table class="table table-bordered mt-4">
            <tr>
              <td>Enter Movie_ID :</td>
              <td>
                <input
                  type="text"
                  name="id"
                  class="form-control"
                  placeholder="Movie_ID"
                />
              </td>
            </tr>
            <tr>
              <td>Enter Movie_Name :</td>
              <td>
                <input
                  type="text"
                  name="title"
                  class="form-control"
                  placeholder="Movie_Name"
                />
              </td>
            </tr>
            <tr>
              <td>Import Image :</td>
              <td>
                <input
                  type="file"
                  name="image"
                  class="form-control-file"
                  size="100"
                />
              </td>
            </tr>
            <tr>
              <td>Enter Releasing_Date:</td>
              <td>
                <input type="date" name="publication" class="form-control" />
              </td>
            </tr>
            <tr>
              <td>Enter Director:</td>
              <td>
                <input
                  type="text"
                  name="director"
                  class="form-control"
                  placeholder="Director"
                />
              </td>
            </tr>
            <tr>
              <td>Enter Review:</td>
              <td>
                <input
                  type="text"
                  name="review"
                  class="form-control"
                  placeholder="Review"
                />
              </td>
            </tr>
            <tr>
              <td>Select Categories:</td>
              <td>
                <select name="categories" class="form-control">
                  <option value="historical">Historical</option>
                  <option value="horror">Horror</option>
                  <option value="love">Love</option>
                  <option value="fiction" selected>Fiction</option>
                </select>
              </td>
            </tr>
            <tr>
              <td></td>
              <td>
                <input type="submit" value="ADD" class="btn btn-primary" />
                <input type="reset" value="Reset" class="btn btn-secondary" />
              </td>
            </tr>
          </table>
        </form>
        =======

        <!--Team Section-->
        <section id="team" class="team">
          <div class="container text-white" data-aos="fade-up">
            <div class="section-title">
              <h2>Team</h2>
              <p>Check our Team</p>
            </div>

            <div class="row">
              <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                <div class="member" data-aos="fade-up" data-aos-delay="100">
                  <div class="member-img">
                    <img src="./images/Powsi.jpg" class="img-fluid" alt="" />
                    <div class="social">
                      <a href="# "><i class="fa-brands fa-facebook"></i></a>
                      <a href="# "><i class="fa-brands fa-twitter"></i></a>
                      <a href="# "><i class="fa-brands fa-instagram"></i></a>
                      <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                    </div>
                  </div>
                  <div class="member-info">
                    <h4>Powsi</h4>
                    <span>Developer</span>
                    <span
                      style="
                        font-size: 8px;
                        font-weight: bold;
                        padding-top: 5px;
                      "
                      >UWU-CST-20-008</span
                    >
                  </div>
                </div>
              </div>

              <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                <div class="member" data-aos="fade-up" data-aos-delay="200">
                  <div class="member-img">
                    <img src="./images/Sasith.jpeg" class="img-fluid" alt="" />
                    <div class="social">
                      <a href="# "><i class="fa-brands fa-facebook"></i></a>
                      <a href="# "><i class="fa-brands fa-twitter"></i></a>
                      <a href="# "><i class="fa-brands fa-instagram"></i></a>
                      <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                    </div>
                  </div>
                  <div class="member-info">
                    <h4>Sasith</h4>
                    <span>Developer</span>
                    <span
                      style="
                        font-size: 8px;
                        font-weight: bold;
                        padding-top: 5px;
                      "
                      >UWU-CST-20-010</span
                    >
                  </div>
                </div>
              </div>

              <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                <div class="member" data-aos="fade-up" data-aos-delay="300">
                  <div class="member-img">
                    <img src="./images/dinuk.jpeg" class="img-fluid" alt="" />
                    <div class="social">
                      <a href="# "><i class="fa-brands fa-facebook"></i></a>
                      <a href="# "><i class="fa-brands fa-twitter"></i></a>
                      <a href="# "><i class="fa-brands fa-instagram"></i></a>
                      <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                    </div>
                  </div>
                  <div class="member-info">
                    <h4>Dinuk</h4>
                    <span>Developer</span>
                    <span
                      style="
                        font-size: 8px;
                        font-weight: bold;
                        padding-top: 5px;
                      "
                      >UWU-CST-20-018</span
                    >
                  </div>
                </div>
              </div>

              <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                <div class="member" data-aos="fade-up" data-aos-delay="400">
                  <div class="member-img">
                    <img src="./images/dinithi.jpg" class="img-fluid" alt="" />
                    <div class="social">
                      <a href="# "><i class="fa-brands fa-facebook"></i></a>
                      <a href="# "><i class="fa-brands fa-twitter"></i></a>
                      <a href="# "><i class="fa-brands fa-instagram"></i></a>
                      <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                    </div>
                  </div>
                  <div class="member-info">
                    <h4>Dinithi</h4>
                    <span>Developer</span>
                    <span
                      style="
                        font-size: 8px;
                        font-weight: bold;
                        padding-top: 5px;
                      "
                      >UWU-CST-20-026</span
                    >
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-md-6 d-flex align-items-stretch">
                <div class="member" data-aos="fade-up" data-aos-delay="400">
                  <div class="member-img">
                    <img src="./images/joshi.jpg" class="img-fluid" alt="" />
                    <div class="social">
                      <a href="# "><i class="fa-brands fa-facebook"></i></a>
                      <a href="# "><i class="fa-brands fa-twitter"></i></a>
                      <a href="# "><i class="fa-brands fa-instagram"></i></a>
                      <a href="# "><i class="fa-brands fa-linkedin"></i></a>
                    </div>
                  </div>
                  <div class="member-info">
                    <h4>Joshiga</h4>
                    <span>Developer</span>
                    <span
                      style="
                        font-size: 8px;
                        font-weight: bold;
                        padding-top: 5px;
                      "
                      >UWU-CST-20-047</span
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

        >>>>>>> 7c1ed4e000a1eb0aae7f4df71ac6ca133eb6541b
      </div>
    </div>
  </body>
</html>
