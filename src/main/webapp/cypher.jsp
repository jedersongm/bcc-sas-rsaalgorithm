<%-- 
    Document   : cypher
    Created on : 04/12/2018, 00:26:10
    Author     : jederson
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
<c:import url="header.jsp"/>
--%>

<div class="container">
    <body class="templatemo-bg-image-1">
            <div class="col-md-12">			
                <form class="form-horizontal templatemo-login-form-2" role="form" action="Cypher" method="post">
                    <div class="row">
                                    
                        <div class="col-md-12">
                            <h1><strong>Chyper</strong></h1>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3">		          	
                                <label for="p" class="control-label">P:</label>
                                <div class="templatemo-input-icon-container">
                                    <i class="fa fa-user"></i>
                                    <input name="p" type = "text"  class="form-control" id="p" placeholder = "${sessionScope.rsa.p}" value="${sessionScope.rsa.p}" disabled="disabled" required>
                                </div>                                  
                            </div>
                            <div class="col-md-3">		          	
                                <label for="q" class="control-label">Q:</label>
                                <div class="templatemo-input-icon-container">
                                    <i class="fa fa-user"></i>
                                    <input name="q" type = "text"  class="form-control" id="q" placeholder = "${sessionScope.rsa.q}" value="${sessionScope.rsa.q}" disabled="disabled" required>
                                </div>		            		            		            
                            </div>
                                <div class="col-md-3">		          	
                                <label for="n" class="control-label">N:</label>
                                <div class="templatemo-input-icon-container">
                                    <i class="fa fa-user"></i>
                                    <input name="n" type = "text"  class="form-control" id="n" placeholder = "${sessionScope.rsa.n}" value="${sessionScope.rsa.n}" disabled="disabled" required>
                                </div>		            		            		            
                            </div>
                                <div class="col-md-3">		          	
                                <label for="z" class="control-label">Z:</label>
                                <div class="templatemo-input-icon-container">
                                    <i class="fa fa-user"></i>
                                    <input name="z" type = "text"  class="form-control" id="z" placeholder = "${sessionScope.rsa.z}" value="${sessionScope.rsa.z}" disabled="disabled" required>
                                </div>		            		            		            
                            </div>
                        </div>                                
                          
                        <div class="form-group">
                            
                            <div class="col-md-4">		          	
                                <label for="e" class="control-label">E:</label>
                                <div class="templatemo-input-icon-container">
                                    <i class="fa fa-user"></i>
                                    <input name="e" type = "text"  class="form-control" id="e" placeholder = "${sessionScope.rsa.e}" value="${sessionScope.rsa.e}" disabled="disabled" required>
                                </div>		            		            		            
                            </div>
                            <div class="col-md-4">		          	
                                <label for="d" class="control-label">D:</label>
                                <div class="templatemo-input-icon-container">
                                    <i class="fa fa-user"></i>
                                    <input name="d" type = "text"  class="form-control" id="d" placeholder = "${sessionScope.rsa.d}" value="${sessionScope.rsa.d}" disabled="disabled" required>
                                </div>		            		            		            
                            </div>
                        </div>
                        <div>
                            <div class="form-group">
                                <label for="textToChyper"><span class="glyphicon glyphicon-envelope">Mensagem:</span></label>
                                <textarea class="form-control" id="textToChyper" rows="5"></textarea>
                              </div>
                            </div> 
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-lock"> Cifrar</span></button>
                            </div>                        
                    </div>
                </form>
            </div>
    </body>
</div>
