<%@ Page Title="" Language="C#" MasterPageFile="~/DevsEMS.Master" AutoEventWireup="true" CodeBehind="Eventdetails.aspx.cs" Inherits="DevsEMS.Eventdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>    Event Details of <asp:Literal ID="ltEventCode" runat="server"></asp:Literal></h1>
    </br>

    <table class="table table-striped table-hover">
        <tr>
            <td>   Event Code </td>
            <td> <asp:Literal ID="ltEventCode1" runat="server"></asp:Literal>   </td>
        </tr>
        <tr>
            <td>   Event ID </td>
            <td>  <asp:Literal ID="lteventid" runat="server"></asp:Literal>  </td>
        </tr>
        <tr>
            <td>   Event Name </td>
            <td>  <asp:Literal ID="lteventname" runat="server"></asp:Literal>  </td>
        </tr>
        <tr>
            <td>   Event Description </td>
            <td>  <asp:Literal ID="lteventdescription" runat="server"></asp:Literal>  </td>
        </tr>
        <tr>
            <td>    Start Date</td>
            <td>  <asp:Literal ID="ltstartdate" runat="server"></asp:Literal>  </td>
        </tr>
        <tr>
            <td>    End Date</td>
            <td>  <asp:Literal ID="ltenddate" runat="server"></asp:Literal>  </td>
        </tr>
        <tr>
            <td>    Venue</td>
            <td>   <asp:Literal ID="ltvenue" runat="server"></asp:Literal> </td>
        </tr>
        <tr>
            <td>   Event Fees </td>
            <td>  <asp:Literal ID="lteventfees" runat="server"></asp:Literal>  </td>
        </tr>
        <tr>
            <td>  Event Status  </td>
            <td> <asp:Literal ID="lteventstatus" runat="server"></asp:Literal>   </td>
        </tr>
        <tr>
            <td>  Event Logo  </td>
            <td> <asp:Image ID="logo" Width="20%" height="10%" runat="server" />   </td>
        </tr>
        <tr>
            
            <td>   <asp:Button ID="Button1" runat="server" Text="Subscribe" OnClick="Button1_Click" /> </td>
        </tr>
    </table>
</asp:Content>
