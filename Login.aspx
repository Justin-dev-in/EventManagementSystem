<%@ Page Title="" Language="C#" MasterPageFile="~/DevsEMS.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DevsEMS.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <fieldset>
              
            <legend>Enter Credentials</legend>
        
            <div class="form-group">
                <label for="LiginId" >EmployeeId</label>
              
                   
                <asp:TextBox ID="LoginId" class="form-control"  runat="server"></asp:TextBox>
                
            </div>
              <div class="form-group">
                <label for="Password" >Password</label>
              
                   
                <asp:TextBox ID="Password" Type="password" class="form-control"  runat="server"></asp:TextBox>
                
            </div>
           
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </div>
          
            </fieldset>
            </div>
</asp:Content>
