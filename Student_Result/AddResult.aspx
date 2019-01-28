<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableViewState="false" AutoEventWireup="true" CodeBehind="AddResult.aspx.cs" Inherits="Student_Result.AddResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        Hello,
        <asp:Label ID="lblname" name="lbltname" Text=" " runat="server"></asp:Label>
        !! Add Result below:
        <asp:Label ID="lbl1" runat="server"></asp:Label>
        <br />
        <br />
        Enter Roll No to add result:<asp:TextBox ID="txtroll" runat="server" Text=""></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtroll" ErrorMessage="Required" ForeColor="Red" /><br>
        <asp:Button ID="btnenter" runat="server" OnClick="btnenter_Click" Text="Enter" />
        <br />
        <br />
        <br />
        <asp:Panel ID="addpanel" runat="server" BorderStyle="Dashed" BackColor="#c0c0c0">
            Subject:
            <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtsubject" ErrorMessage="Required" ForeColor="black" />
            <br />
            Full Marks:
        <asp:TextBox ID="txtfm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtfm" ErrorMessage="Required" ForeColor="black" />
            <br />
            Pass Marks:<asp:TextBox ID="txtpm" runat="server">
            </asp:TextBox><asp:RequiredFieldValidator runat="server" ControlToValidate="txtpm" ErrorMessage="Required" ForeColor="black" />
            <br />
            Obtained Marks:
        <asp:TextBox ID="txtobtmarks" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtobtmarks" ErrorMessage="Required" ForeColor="black" />
            <br />
            Practical Marks:
        <asp:TextBox ID="txtpracmarks" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtpracmarks" ErrorMessage="Required" ForeColor="black" />
            <br />

            <asp:Button ID="btnadd" runat="server" BackColor="Gray" BorderColor="#99FF33" ForeColor="White" OnClick="btnadd_Click" Text="Add" Width="172px" />
            <br />


            <br />
            The result for rollno
            <asp:Label ID="lblrn" runat="server"></asp:Label>
            is:<br />
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

        </asp:Panel>

        <br />
    </div>


</asp:Content>
