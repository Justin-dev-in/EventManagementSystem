<%@ Page Title="" Language="C#" MasterPageFile="~/DevsEMS.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="DevsEMS.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            
    <div class="container">
        <fieldset>
              
            <legend>Enter Employee details</legend>
        
            <div class="form-group">
                <label for="EmployeeID" >Employee ID</label>
              
                   
                <asp:TextBox ID="EmployeeID" class="form-control"  runat="server"></asp:TextBox>
                
            </div>
              <div class="form-group">
                <label for="DepartmentID" >Department ID</label>
              
                   
                <asp:TextBox ID="DepartmentID" class="form-control"  runat="server"></asp:TextBox>
                
            </div>
            <div class="form-group">
              <label for="EmployeeName" >Employee Name</label>
               
      
               
           <asp:TextBox ID="EmployeeName" class="form-control"  runat="server"></asp:TextBox>
    </div>
          <div class="form-group">
                <label for="Address">Address</label>
               
              <asp:TextBox ID="Address" class="form-control"   runat="server"></asp:TextBox>
                    
            </div>
            <div class="form-group">
                <label for="Phone">Phone</label>
               
                 <asp:TextBox  ID="Phone" class="form-control"   runat="server" ></asp:TextBox>
               
            
            </div>
            <div class="form-group">
                <label for="Email">Email</label>
    
                 <asp:TextBox ID="Email" class="form-control"  runat="server"  ></asp:TextBox>
               
            </div>
            <div class="form-group">
                <label for="DOB">Date Of Birth</label>
              
                    <asp:TextBox ID="DOB" class="form-control"   placeholder="Date/Month/Year" runat="server"></asp:TextBox>  
            </div>
            <div class="form-group">
                <label for="DOJ">Date Of Joining</label>
         <asp:TextBox ID="DOJ" class="form-control"  placeholder="Date/Month/Year" runat="server"></asp:TextBox>  
        
               
            </div>
             <div class="form-group">
              <label for="Role" >Role</label>  
           <asp:TextBox ID="Role" class="form-control"  runat="server"></asp:TextBox>
           </div>
      
     <div class="form-group">
                <label for="Skillset">Skillset</label>
         <asp:TextBox ID="Skillset" class="form-control"   runat="server"></asp:TextBox>  
        
               
            </div>
             <div class="form-group">
                <label for="Salary">Salary</label>
         <asp:TextBox ID="Salary" class="form-control"   runat="server"></asp:TextBox>  
        
               
            </div>
             <div class="form-group">
                <label for="Password" >Password</label>
              
                   
                <asp:TextBox ID="Password" class="form-control"  runat="server"></asp:TextBox>
                
            </div>
    <div class="form-group">
                <label for="Empimage">Image</label>
              
          
     
        <asp:FileUpload ID="Empimage" class="form-control" runat="server" />

            </div>
           
             
        
         </fieldset>

        

</div>
    <asp:Button ID="ADD" runat="server" OnClick="ADD_Click" Text="ADD" Width="92px" />
</asp:Content>


