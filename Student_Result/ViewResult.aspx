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
            <asp:DataGrid ID="gridresult" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundColumn DataField="subject" HeaderText="Subject"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fullmarks" HeaderText="Full Marks"></asp:BoundColumn>
                    <asp:BoundColumn DataField="passmarks" HeaderText="Pass Marks"></asp:BoundColumn>
                    <asp:BoundColumn DataField="obtmarks" HeaderText="Obtained Marks"></asp:BoundColumn>
                    <asp:BoundColumn DataField="pracmarks" HeaderText="Practical Marks"></asp:BoundColumn>
                    <asp:BoundColumn DataField="totalmarks" HeaderText="Total Marks"></asp:BoundColumn>
                    <asp:BoundColumn DataField="percentage" HeaderText="Percentage"></asp:BoundColumn>
                </Columns>
            </asp:DataGrid>
        </div>
  

</asp:Content>
