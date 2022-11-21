<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LOCALBUSINESS.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
<style>
    ul{  
    padding:0;  
    background:black;  
    font-family:Arial, sans serif;
}

li{  
    display:inline-block;
}

a{  
    display:block;  
    padding:10px;  
    color:white;  
    text-decoration:none;
}

footer {
  display: block;
}

footer {
  text-align: center;
  padding: 3px;
  background-color:black;
  color: white;
}
.images {
            display: flex;
            flex-wrap: wrap;
            margin: 0 50px;
            padding: 30px;
        }
  
        .images {
            max-width: 31.333%;
            padding: 0 10px;
            height: 140px;
        }

        .images {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
              
                <a href="Login.aspx">Customer<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></a> <a href="CustomerLogin.aspx">Service Provider </a>

               
  
 
       </ul>
           

        </div>
        <div>
         <img src="images/lb1.jpg" width="300" height="300"/>
         <img src="images/lb2.jfif"width="300" height="300"/>
         <img src="images/lb3.jfif"width="300" height="300"/> <br></br>
         <img src="images/lb4.jpg"width="300" height="300"/>
         <img src="images/lb5.jpg"width="300" height="300"/>
         <img src="images/lb6.jfif"width="300" height="300"/>


        </div>
    </form>
    <footer>
  <p>1Crore plus trusted customers</p>
  <p>Helpdesk number:3456788767</p>
</footer>
</body>
  
</html>
