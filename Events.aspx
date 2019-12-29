<%@ Page Title="" Language="C#" MasterPageFile="~/DevsEMS.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="DevsEMS.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-striped" DataSourceID="ObjectDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Eventcode" HeaderText="Event Code" SortExpression="Eventcode" />
            <asp:BoundField DataField="EventID" HeaderText="Event ID" SortExpression="EventID" />
            <asp:BoundField DataField="Eventname" HeaderText="Event Name" SortExpression="Eventname" />
            <asp:BoundField DataField="EventDescription" HeaderText="Event Description" SortExpression="EventDescription" Visible="False" />
            <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate" Visible="False" />
            <asp:BoundField DataField="EndDate" HeaderText="End Date" SortExpression="EndDate" Visible="False" />
            <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" Visible="False" />
            <asp:BoundField DataField="EventFees" HeaderText="Event Fees" SortExpression="EventFees" Visible="False" />
            <asp:BoundField DataField="EventStatus" HeaderText="Event Status" SortExpression="EventStatus" Visible="False" />
            <asp:BoundField DataField="Eventlogo" HeaderText="Event  Logo" SortExpression="Eventlogo" Visible="False" />
            <asp:ButtonField CommandName="Select" HeaderText="Show Details" ShowHeader="True" Text="ShowDetails" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getAllEvent" TypeName="DevsEMS.Dal.DevsEventsDal"></asp:ObjectDataSource>

</asp:Content>
