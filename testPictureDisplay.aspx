<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testPictureDisplay.aspx.cs" Inherits="testPictureDisplay" %>

<!DOCTYPE html>

<style type="text/css">
    .xttblog{   
 width: 500px;   
 height: 50px;   
 margin-top:50px;   
 margin-left: auto;   
 margin-right: auto;   
} 

    .box{margin-left: 5px;margin-top: 5px;list-style-type:none;}   
.box:after{   
 content: ".";   
 display: block;   
 line-height: 0;   
 width:0;   
 height: 0;   
 clear: both;   
 visibility: hidden;   
 overflow: hidden;   
}   
.box li{float:left;line-height: 70px; }   

.box li a,.box li a:visited{   
 display:block;   
 border: 5px solid #ccc;   
 width: 50px;   
 height: 50px;   
 text-align: center;   
 margin-left: -5px;   
 margin-top: -5px;   
 position: relative;   
 z-index: 1;   
}   
.box li a:hover{z-index: 2;}  
</style>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>


<body>
    <form id="form1" runat="server">
    <div class="xttblog">  
 <ul class="box">  
  <li><a href="#" title="1"><img src="images/btn_search.png"/></a></li>  
  <li><a href="#" title="2"><img src="images/btn_search.png"/></a></li>  
  <li><a href="#" title="3"><img src="images/btn_search.png"/></a></li>  
  <li><a href="#" title="4"><img src="images/btn_search.png"/></a></li>  
  <li><a href="#" title="5"><img src="images/btn_search.png"/></a></li>  
  <li><a href="#" title="6"><img src="images/btn_search.png"/></a></li>  
  <li><a href="#" title="7"><img src="images/btn_search.png"/></a></li>  
  <li><a href="#" title="8"><img src="images/btn_search.png"/></a></li>  
  <li><a href="#" title="9"><img src="images/btn_search.png"/></a></li>  
 </ul>  
</div>  
    </form>
</body>
</html>
