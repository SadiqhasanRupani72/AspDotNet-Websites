<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="AspDotNetWebsites.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Upload Using Asp Dot Net</title>
    <style>
        .container{
            width: 950px;
            height:850px;
            margin: 5px auto;
            background-color: #faedcd;
            border: 2px #fefae0 solid;
            border-radius: 10px;
        }
        body{
            margin: 40px auto;
            background-color: #7400B8;
        }
        .blur{
            position: absolute;
            left: 0px;
            top: 0px;
            z-index: -1;
            width: 100%;
            height: 100%;
            -webkit-filter: blur(10px); 
            filter: blur(10px);
        }
        .center{
            width: 100%;
            margin: auto;
            text-align:center;
            border-radius: 10px;
        }
        #Button1{
            background-color: #5E60CE;
            border: 2px #5390D9 solid;
            border-radius: 5px;
            box-shadow: 2px 2px 10px 6px #5E60CE;
            color: white;
            letter-spacing: 0px;
            font-family: 'Cascadia Mono PL';
            font-size: 100%;
            font-weight: bolder;
        }
        #Button1:hover{
            background-color: #94d2bd;
        }
        #FileUpload1{
            margin-top: 30px;
            background-color: #5E60CE;
            color: white;
            letter-spacing: 0px;
            border: 2px #5390D9 solid;
            border-radius: 5px;
            text-align: center;
            font-size: 20px;
            font-family: 'Cascadia Mono PL';
            padding: 5px;
            line-height: 10px;
            box-shadow: 2px 2px 10px 6px #5E60CE;
        }
        #Image1{
            background-color: #5E60CE;
            border: 2px #5390D9 solid;
            border-radius: 5px;
            box-shadow: 2px 2px 10px 6px #5E60CE;
            padding: 2px;
        }
        .label{
            font-family: 'Cascadia Mono PL';
            font-size: 15px;
            font-weight: bold;
            text-shadow: 1px 1px 5px #48BFE3;
            letter-spacing: 2px;
            color: #48BFE3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="center">
            
            <asp:FileUpload ID="FileUpload1" runat="server" Height="51px" Width="468px" style="margin-left: 0px" BorderStyle="Groove" /> <br/>
            <br/>
        </div>
        <div class="center">
            <asp:Image ID="Image1" runat="server" Height="407px" Width="855px" />
            
        </div>
        <div class="center"">
            <br />
            <br />
            <br />
            <asp:Button id="Button1" runat="server" OnClick="Button1_Click" Text="Upload" Height="33px" Width="170px" />
            <br />
            <br />
            <asp:Label class="label" ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label class="label" ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label class="label" ID="Label3" runat="server" Text="Label"></asp:Label>
            
            
        </div>
    </div>
    </form>
</body>
</html>
