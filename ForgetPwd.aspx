<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPwd.aspx.cs" Inherits="ForgetPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
        <tr>
            <td colspan="2">
                <div class="content_title new-title"><h2>Forgot Password</h2></div>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#006600" 
                    Text="Enter Your Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#006600" 
                    Text="Enter Your Emaild ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmailID" runat="server" autocomplete="off"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 36px">
                </td>
            <td style="height: 36px">
                <asp:Button ID="btnPassword" runat="server" onclick="btnPassword_Click" 
                    Text="Get Password" class="sub-btn" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DISCUSSIONFORUMConnectionString %>" 
                    SelectCommand="SELECT [pwd],mobile FROM [Registration] WHERE (([username] = @username) AND ([email] = @emailid))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtUsername" Name="username" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="txtEmailID" Name="emailid" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmessage" runat="server" Font-Bold="True" ForeColor="#009933">Note: Please Enter Correct email ID. Password will send on correct Email ID.</asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

