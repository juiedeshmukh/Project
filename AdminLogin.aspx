<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- content -->

<div class="new_arrivals">
	<div class="container">
		<h3><span>Admin </span>Login</h3>
		
		
		<div class="login-grids">
								<div class="login">
									
									<div class="login-right user-new">
										<h3></h3>
										
											<div class="sign-in">
												<h4>Username :</h4>
                                                <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                <asp:TextBox ID="txtUsername" runat="server" value="Type here" 
                                                    onfocus="this.value = '';" 
                                                    onblur="if (this.value == '') {this.value = 'Type here';}" autocomplete="off"></asp:TextBox>
											</div>
											<div class="sign-in">
												<h4>Password :</h4>
                                                <%--<input value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="" type="password">--%>
                                                <asp:TextBox ID="txtPwd" runat="server" value="Password" 
                                                    onfocus="this.value = '';" 
                                                    onblur="if (this.value == '') {this.value = 'Password';}" 
                                                    TextMode="Password"></asp:TextBox>
												<a href="ForgetPwd.aspx">Forgot password</a>
											</div>
											<div class="single-bottom">
                                                <%--<input id="brand" value="" type="checkbox">--%>
                                                <asp:CheckBox ID="brand" runat="server" value="" />
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<div class="sign-in">
                                                <%--<input value="SIGNIN" type="submit">--%>
                                                <asp:Button ID="btnLogin" runat="server" Text="SIGNIN" 
                                                    onclick="btnLogin_Click" />
											    <asp:HiddenField ID="hfUser" runat="server" />
                                                <asp:HiddenField ID="hfPwd" runat="server" />
                                                <asp:SqlDataSource ID="SqlDataLogin" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:QueryFacets_NewDesignConnectionString %>" 
                                                    SelectCommand="SELECT [username], [pwd] FROM [Registration] WHERE (([username] = @username) AND ([pwd] = @pwd) and status='Active')">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="hfUser" Name="username" PropertyName="Value" 
                                                            Type="String" />
                                                        <asp:ControlParameter ControlID="hfPwd" Name="pwd" PropertyName="Value" 
                                                            Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
											</div>
										
									</div>
									<div class="clearfix"></div>
								</div>
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
		
		
	</div>
</div>
<!-- //content -->
</asp:Content>

