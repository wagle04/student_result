<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Student_Result.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>

        <table class="reporttable">
            <tr>
                <th colspan="2" style="align-content: center;">Report Issue</th>
            </tr>
            <tr>
                <td>User Name: </td>
                <td>
                    <input name="username" /></td>
            </tr>
            <tr>
                <td>Password: </td>
                <td>
                    <input name="password" type="password" /></td>
            </tr>
            <tr>
                <td>Issue: </td>
                <td>
                <textarea id="TextArea1" name="issue" cols="20" rows="2"></textarea></td>
            </tr>
            <tr>
                <th>
                    <asp:Button runat="server" name="btnforgotpw" Text="Forgot Password?" Style="align-content: center; font-size: 20px; background: black; color: white;" OnClick="btnforgot_Click" /></th>
                <th>
                    <asp:Button runat="server" name="btnReport" Text="Report" Style="align-content: center; font-size: 20px; background: black; color: white;" OnClick="btnReport_Click" /></th>

            </tr>

        </table>
    </div>



</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .reporttable {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #000000;
            background-color: #CCCCCC;
            border: 2px solid #660033;
            height: 200px;
            font-size: 30px;
            width: 30%;
            margin:0px auto;
            
            
        }

        input {
            height: 30px;
            font-size: 20px;
            width: 200px;
        }
        #TextArea1{
            height:100px;
            font-size:15px;
        }
    


    </style>
</asp:Content>
