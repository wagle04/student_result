<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableViewState="false" AutoEventWireup="true" CodeBehind="AddResult.aspx.cs" Inherits="Student_Result.AddResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        input {
            height: 25px;
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

        .btnenter {
            height: 35px;
            font-size: 25px;
            width: 100px;
            margin-left: 240px;
            background-color: red;
            color: yellow;
        }

        .panel1 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #000000;
            background-color: #CCCCCC;
            border: 2px solid #660033;
            font-size: 25px;
            margin: 0px auto;
            width: 55%;
        }

        .bodydiv {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #000000;
            background-color: #CCCCCC;
            border: 2px solid #660033;
            font-size: 25px;
            margin: 0px auto;
            width: 55%;
        }

        .txtsubject {
            margin-left: 155px;
        }

        .txtfm {
            margin-left: 124px;
        }

        .txtpm {
            margin-left: 118px;
        }

        .txtobtmarks {
            margin-left: 65px;
        }

        .txtpracmarks {
            margin-left: 75px;
        }

        .txtroll {
            margin-left: 148px;
        }

        .btnadd {
            height: 35px;
            font-size: 25px;
            width: 100px;
            margin-left: 242px;
            background-color: red;
            color: yellow;
        }

        .GridView1 {
            width: 70%;
            font-size: 20px;
            margin: 0px auto;
        }
    </style>
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header">
        Hello,
        <asp:Label ID="lblname" Text=" " runat="server"></asp:Label>
        !! Add Result below:
    </div>
    <hr />
    <div class="bodydiv">
        Roll No: 
        <asp:TextBox ID="txtroll" class="txtroll" runat="server" Text=""></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtroll" ErrorMessage="Required" ForeColor="Red" Font-Bold="true" /><br>

        <asp:Button ID="btnenter" class="btnenter" runat="server" OnClick="btnenter_Click" Text="Enter" />
        <br />
        <hr class="hor1" />
    </div>
    <div class="panel1">
        <asp:Panel ID="addpanel" runat="server">
            Subject:
             <asp:TextBox ID="txtsubject" class="txtsubject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtsubject" ErrorMessage="Required" />
            <br />
            Full Marks:
        <asp:TextBox ID="txtfm" class="txtfm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtfm" ErrorMessage="Required" />
            <asp:RegularExpressionValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtfm" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number only"></asp:RegularExpressionValidator>
            <br />
            Pass Marks:
            <asp:TextBox ID="txtpm" class="txtpm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtpm" ErrorMessage="Required" />
            <asp:RegularExpressionValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtpm" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number only"></asp:RegularExpressionValidator>
            <br />
            Obtained Marks:
        <asp:TextBox ID="txtobtmarks" class="txtobtmarks" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtobtmarks" ErrorMessage="Required" />
            <asp:RegularExpressionValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtobtmarks" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number only"></asp:RegularExpressionValidator>

            <br />
            Practical Marks:
        <asp:TextBox ID="txtpracmarks" class="txtpracmarks" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ForeColor="Red" Font-Bold="true" ControlToValidate="txtpracmarks" ErrorMessage="Required" />
            <asp:RegularExpressionValidator ForeColor="Red" Font-Bold="true" ControlToValidate="txtpracmarks" ValidationExpression="^[0-9]*$" runat="server" ErrorMessage="Number only"></asp:RegularExpressionValidator>
            <br />

            <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" class="btnadd" />
            <hr />

            The result for Roll No
            <asp:Label ID="lblrn" runat="server" ForeColor="#666666"></asp:Label>
            is:<br />
            <div class="GridView1">
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="subject" OnRowDeleting="GridView1_RowDeleting" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />

                    <Columns>
                        <asp:CommandField ShowDeleteButton="true" />
                        <asp:BoundField DataField="subject" HeaderText="Subject">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="fullmarks" HeaderText="F.M.">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="passmarks" HeaderText="P.M.">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="obtmarks" HeaderText="Obtained Marks">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="pracmarks" HeaderText="Practical Marks">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="totalmarks" HeaderText="Total">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Columns>


                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </div>

        </asp:Panel>

        <br />
    </div>


</asp:Content>

