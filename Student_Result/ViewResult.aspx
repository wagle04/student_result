<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewResult.aspx.cs" Inherits="Student_Result.ViewResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .header {
            width: 55%;
            background: #17daec;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            margin: 0px auto;
            font-size: 25px;
            text-align: center;
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

        .GridView1 {
            width: 70%;
            font-size: 20px;
            margin: 0px auto;
        }
        .tableview{
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
        !! Your Result is as:
    </div>
    <br />
    <div class="bodydiv">
        <br />
        <div class="GridView1">
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
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
        <div class="tableview">
            <table style="width: 100%; border-color: red; border-width: 2px;">
                <tr>
                    <th>Percentage</th>
                    <td>
                        <asp:Label ID="lblpercent" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Division</th>
                    <td>
                        <asp:Label ID="lbldivision" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th>Result</th>
                    <td>
                        <asp:Label ID="lblresult" runat="server"></asp:Label></td>
                </tr>
            </table>
        </div>
    </div>


</asp:Content>
