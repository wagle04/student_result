<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherLogin.aspx.cs" Inherits="Student_Result._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>

        <table class="logintable">
            <tr>
                <th colspan="2" style="align-content: center;">Teacher Login Form</th>
            </tr>
            <tr>
                <td>User Name: </td>
                <td>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </tr>
            <tr>
                <td>Password: </td>
                <td>
                    <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
            </tr>
            <tr>
                <th>
                    <asp:Button runat="server" name="btnforgotpw" Text="Forgot Password?" Style="align-content: center; font-size: 20px; background: black; color: white;" OnClick="btnforgot_Click" /></th>
                <th>
                    <asp:Button runat="server" name="btnLogin" Text="Login" Style="align-content: center; font-size: 20px; background: black; color: white;" OnClick="btnLogin_Click" /></th>

            </tr>

        </table>
    </div>



</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .logintable {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #000000;
            background-color: #CCCCCC;
            border: 2px solid #660033;
            height: 200px;
            font-size: 30px;
            width: 400px;
            margin:0px auto;
        }

        input {
            height: 30px;
            font-size: 20px;
            width: 200px;
        }


    </style>
</asp:Content>


