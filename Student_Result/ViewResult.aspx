<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewResult.aspx.cs" Inherits="Student_Result.ViewResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        Hello,
        <asp:Label ID="lblname" name="lbltname" Text=" " runat="server"></asp:Label>
        !! Your Result is as:
    </div>

    <div>
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


</asp:Content>
