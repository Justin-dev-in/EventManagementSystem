<%@ Page Title="" Language="C#" MasterPageFile="~/DevsEMS.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="DevsEMS.AddEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           
    <div class="container">
        <fieldset>
              
            <legend>Enter event details</legend>
        
            <div class="form-group">
                <label for="EventID" >Event ID</label>
              
                   
                <asp:TextBox ID="EventID" class="form-control"  runat="server"></asp:TextBox>
                
            </div>
            <div class="form-group">
              <label for="EventCode" >Event Code</label>
               
      
               
           <asp:TextBox ID="EventCode" class="form-control"  runat="server"></asp:TextBox>
    </div>
            <div class="form-group">
     <label for="EventName" >Event Name</label>
              
                    
              <asp:TextBox ID="EventName" class="form-control"   runat="server"></asp:TextBox>
            </div>  
          <div class="form-group">
                <label for="EventDescription">Description</label>
               
              <asp:TextBox ID="EventDescription" class="form-control"   runat="server"></asp:TextBox>
                    
            </div>
            <div class="form-group">
                <label for="StartDate">Start Date</label>
               
                 <asp:TextBox  ID="StartDate" class="form-control"   runat="server"  placeholder="Date/Month/Year"></asp:TextBox>
               
            
            </div>
            <div class="form-group">
                <label for="EndDate">End date</label>
    
                 <asp:TextBox ID="EndDate" class="form-control"  runat="server"  placeholder="Date/Month/Year"></asp:TextBox>
               
            </div>
            <div class="form-group">
                <label for="Venue">Venue</label>
              
                    <asp:TextBox ID="Venue" class="form-control"   runat="server"></asp:TextBox>  
            </div>
            <div class="form-group">
                <label for="EventStatus">Event Status</label>
         <asp:TextBox ID="EventStatus" class="form-control"   runat="server"></asp:TextBox>  
        
               
            </div>
      
     <div class="form-group">
                <label for="EventFees">Fees</label>
         <asp:TextBox ID="EventFees" class="form-control"   runat="server"></asp:TextBox>  
        
               
            </div>
    <div class="form-group">
                <label for="EventLogo">Logo</label>
              
          
     
        <asp:FileUpload ID="EventLogo" class="form-control" runat="server" />

            </div>
        
         </fieldset>
        

</div>
    <asp:Button ID="ADD" runat="server" OnClick="ADD_Click" Text="ADD" Width="92px" />
</asp:Content>
