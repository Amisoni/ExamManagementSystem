<%@include file="header.jsp" %>


	<div class="login-area default-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <form action="Login" id="login-form" class="white-popup-block" method="post">
                        <div class="col-md-4 login-social">
                            <h4>Login with social</h4>
                            <ul>
                                <li class="facebook">
                                    <a href="#">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="twitter">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="linkedin">
                                    <a href="#">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-8 login-custom">
                            <h4>login to your registered account!</h4>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="form-group">
                                            <!--   	    <input class="form-control" placeholder="no" type="hidden" name="no" value="<%=request.getSession().getAttribute("no")%>">
 											 <input class="form-control" placeholder="no" type="hidden" name="no"> 
                                    	   <input class="form-control" placeholder="Username" type="hidden" name="nm">-->
                                        <input class="form-control" placeholder="Email" type="text" name="email">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" type="text" name="pwd">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <label for="login-remember"><input type="checkbox" id="login-remember">Remember Me</label>
                                    <a title="Lost Password" href="#" class="lost-pass-link">Lost your password?</a>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <button type="submit">
                                        Login
                                    </button>
                                </div>
                            </div>
                            <p class="link-bottom">Not a member yet? <a href="#">Register now</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp"%>