<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Student_Result.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header">
        To see your result, enter your username/roll number and password below!!
    </div>
    <br />
    <div>

        <table class="logintable">
            <tr>
                <th colspan="2" style="align-content: center;">Student Login Form</th>
            </tr>
            <tr>
                <td>User Name: </td>
                <td>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </tr>
            <tr>
                <td>Password: </td>
                <td>
                    <asp:TextBox TextMode="Password" ID="password" runat="server"></asp:TextBox>
            </tr>
            <tr>
                <th>
                    <asp:Button runat="server"  Text="Forgot Password?" Style="align-content: center; font-size: 20px; background: black; color: white;" OnClick="btnforgot_Click" /></th>
                <th>
                    <asp:Button runat="server" Text="Login" Style="align-content: center; font-size: 20px; background: black; color: white;" OnClick="btnLogin_Click" /></th>

            </tr>


            <tr>
                <td colspan="2" style="background: green; font-size: 20px; text-align: center;">Not a student? To login as teacher click below!!</td>
                <tr>
                    <td colspan="2">
                        <asp:Button runat="server" Text="Login as Teacher" OnClick="btnTeacher_Click" Style="align-content: center; font-size: 20px; background: black; color: white; width: 100%;" /></td>
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
            height: 250px;
            font-size: 30px;
            width: 400px;
            margin: 0px auto;
        }

        input {
            height: 30px;
            font-size: 20px;
            width: 200px;
        }

        .header {
            width: 55%;
            background: #17daec;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            margin: 0px auto;
            font-size: 25px;
            text-align: center;
        }
    </style>
</asp:Content>
