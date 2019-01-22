<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Student_Result.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="contactdiv">
    <strong>XYZ  College</strong>
        <address>
       New Baneswor, Opposite of BICC<br />
        Kathmandu<br />
        <abbr title="Phone">P:</abbr>
        014-9631472
    </address>

    <address>
        <strong>Admin:</strong>   <a href="mailto:admin@xyz.com" style="text-decoration:none;color:black;">admin@xyz.com</a><br />
    </address>
        </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .contactdiv{
            background:#2deadc;
            font-size:25px;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            width:23%;
            margin:0px auto;
            border:double;
            border-width:2px;
            border-color:brown;
            padding:20px;

        }
    </style>
</asp:Content>
