﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="nav.ascx.cs" Inherits="fmsc.header1" %>


    <div class="container">
    <h3>Feed My Starving Children</h3>
    <nav class="navbar navbar-light bg-faded">
        <ul class="nav navbar-nav">
            <li class="nav-item" runat="server" id="liHome">
                <asp:HyperLink ID="home" class="nav-link" NavigateUrl="~/Default.aspx" runat="server">Home</asp:HyperLink>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../Donate.aspx">Donate</a>
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="profile" class="nav-link" NavigateUrl="~/Register.aspx" runat="server" Visible="false">Profile</asp:HyperLink>
            </li>
            <li class="nav-item">
                <asp:HyperLink ID="dashboard" class="nav-link" NavigateUrl="~/Dashboard.aspx" runat="server" Visible="false">Dashboard</asp:HyperLink>
            </li>
        </ul>
        <div class="form-inline pull-xs-right", style="padding-top: 3px">
            <asp:Label ID="userName" runat="server" Text=""></asp:Label>&nbsp;&nbsp;
            <asp:HyperLink ID="login" class="btn btn-success-outline btn-sm" NavigateUrl="~/Login.aspx" runat="server" Visible="false">Login</asp:HyperLink>
            <asp:HyperLink ID="logout" class="btn btn-success-outline btn-sm" NavigateUrl="~/Logout.aspx" runat="server" Visible="false">Logout</asp:HyperLink>           
        </div>
        
    </nav>
</div>