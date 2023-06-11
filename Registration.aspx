<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- content -->

<div class="new_arrivals">
	<div class="container">
		<h3><span>Sign </span>Up</h3>
		
		
		<div class="login-grids">
								<div class="login">
									
									<div class="login-bottom">
										<h3>Sign up for free</h3>

                                            <div class="sign-up">
												<h4>Name :</h4>
                                                <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                <asp:TextBox ID="txtname" runat="server" value="Type here" 
                                                    onfocus="this.value = '';" 
                                                    onblur="if (this.value == '') {this.value = 'Type here';}" autocomplete="off"></asp:TextBox>
											<p class="valid">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="txtname" ErrorMessage="RequiredFieldValidator">please enter name</asp:RequiredFieldValidator>
                                                </p>
                                            </div>
										    
											<div class="sign-up">
												<h4>Email :</h4>
                                                <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                <asp:TextBox ID="txtemail" runat="server"  value="Type here" 
                                                    onfocus="this.value = '';" 
                                                    onblur="if (this.value == '') {this.value = 'Type here';}" autocomplete="off"></asp:TextBox>
											    <p class="valid">
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">please enter email id</asp:RegularExpressionValidator>
                                                </p>
                                            </div>

                                            	<div class="sign-up">
												<h4>Contact No. :</h4>
                                                    <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                    <asp:TextBox ID="txtmob" runat="server" value="Type here" 
                                                        onfocus="this.value = '';" 
                                                        onblur="if (this.value == '') {this.value = 'Type here';}" 
                                                        autocomplete="off" MaxLength="10"></asp:TextBox>
											        <p class="valid">
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                            ControlToValidate="txtmob" ErrorMessage="RegularExpressionValidator" 
                                                            ValidationExpression="\d{10}">enter mobile number</asp:RegularExpressionValidator>
                                                    </p>
                                            </div>

                                            	<div class="sign-up">
												<h4>Address :</h4>
                                                    <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                    <asp:TextBox ID="txtaddress" runat="server" value="Type here" 
                                                        onfocus="this.value = '';" 
                                                        onblur="if (this.value == '') {this.value = 'Type here';}" TextMode="MultiLine"></asp:TextBox>
											        <p class="valid">&nbsp;</p>
                                            </div>

                                            <div class="sign-up">
												<h4>Create Username :</h4>
                                                <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                <asp:TextBox ID="txtusername" runat="server" value="Type here" 
                                                    onfocus="this.value = '';" 
                                                    onblur="if (this.value == '') {this.value = 'Type here';}" autocomplete="off"></asp:TextBox>
											    <p class="valid">&nbsp;</p>
                                            </div>

											<div class="sign-up">
												<h4>Password :</h4>
                                                <%--<input value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="" type="password">--%>
                                                <asp:TextBox ID="txtpwd" runat="server" value="Password" 
                                                    onfocus="this.value = '';" 
                                                    onblur="if (this.value == '') {this.value = 'Password';}" 
                                                    TextMode="Password"></asp:TextBox>
												<p class="valid">&nbsp;</p>
											</div>
											<div class="sign-up">
												<h4>Profile Password Pin :</h4>
                                                <%--<input value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="" type="password">--%>
                                                <asp:TextBox ID="txtPin" runat="server" TextMode="Password" ></asp:TextBox>
												<p class="valid">&nbsp;</p>
											</div>

                                            <div class="sign-up">
												<h4>Choose Photo :</h4>
                                                <%--<input value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="" type="password">--%>
                                                
												<p class="valid">
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                    </p>
											</div>
										

											<div class="sign-up">
                                                <%--<input value="REGISTER NOW" type="submit">--%>
                                                <asp:Button ID="btnSubmit" runat="server" Text="REGISTER NOW" 
                                                    onclick="btnSubmit_Click" />
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

