<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address Book</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <main class="d-flex align-items-center"  style="height:auto;margin-top:50px">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center">
                            <span class="fa-3x fa fa-user"></span>
                            <h2> Login </h2>
                        </div>
                        <br>
                        <div class="card-body">
                            <div class="form">
                                <form action="LoginServlet" method="POST" id="Login" >
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="validationDefault01">Username</label>
                                            <input type="text" maxlength="50" name="username" class="form-control" id="validationDefault01" placeholder="username" required>
                                        </div>

                                    </div>
                                    <div class="form-row">
                                            <div class="col-md-4 mb-3">
                                                <label for="validationDefault02">Password</label>
                                                <input type="password" maxlength="50" name="password" class="form-control" id="validationDefault02" placeholder="password" required>
                                            </div>
                                    </div>
                                    <center>
                                        <button class="btn btn-primary" style="align-items: center!important" type="submit">Login</button>
                                    </center>
                                </form>
                            </div>
                            <a href="register.jsp">Not Registered yet?</a>
                        </div>

                        <center>
                            <div class="loader center-align" style="margin-top: 10px;display: none">

                                <div class="spinner-border text-success fa fa-spinner fa-3x">
                                    <h5>Please wait.....</h5>
                                </div>
                            </div>
                        </center>
                    </div>

                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
        </script>

    </body>
</html>