<%-- 
    Document   : generateKeys
    Created on : 03/12/2018, 22:57:38
    Author     : jederson
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="header.jsp"/>

<div class="container">
    <body class="templatemo-bg-image-1">
            <div class="col-md-12">			
                <form class="form-horizontal templatemo-login-form-2" role="form" action="GenerateKeys" method="post">
                    <div class="row">
                                    
                        <div class="col-md-12">
                            <h1><strong>Gerar chaves</strong></h1>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">		          	
                                <label for="p" class="control-label">P:</label>
                                <div class="templatemo-input-icon-container">
                                    <i class="fa fa-user"></i>
                                    <input name="p" type = "text"  class="form-control" id="p" placeholder = "P -Informe um n�mero primo" required>
                                </div>                                  
                            </div>
                        </div>                                
                          
                        <div class="form-group">
                            <div class="col-md-6">		          	
                                <label for="q" class="control-label">Q:</label>
                                <div class="templatemo-input-icon-container">
                                    <i class="fa fa-user"></i>
                                    <input name="q" type = "text"  class="form-control" id="apelido" placeholder = "Q -Informe um n�mero primo" required>
                                </div>		            		            		            
                            </div> 
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-outline-primary"><span class="glyphicon glyphicon-random">GERAR</span></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
    </body>
</div>