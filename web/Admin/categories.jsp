<%@ include file="index.jsp"%>
<form action="../categories" method="post">
<div style="margin-top: 150px;margin-right: 50px; margin-left: 350px;">
                            <h2 class="card-inside-title">Categories</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" class="form-control" placeholder="Name" name="name"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" class="form-control" placeholder="Class" name="cls"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" class="form-control" placeholder="Topics" name="topic"/>
                                        </div>
                                        
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="file" class="form-control" placeholder="Upload File" name="file"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
						<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>
</div>
</form>