<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration2.aspx.cs" Inherits="Registration2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="new_arrivals">
	<div class="container">
		<h3><span>Card </span>Data</h3>
		
		
		<div class="login-grids">
								<div class="login">
									
									<div class="login-bottom">
										<h3>Enter Card Details</h3>

                                            <div class="sign-up">
												<h4>Card Number :</h4>
                                                <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                <asp:TextBox ID="txtCardNo" runat="server" value="Type here" 
                                                    onfocus="this.value = '';" 
                                                    onblur="if (this.value == '') {this.value = 'Type here';}" MaxLength="16"></asp:TextBox>
											<p class="valid">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ControlToValidate="txtCardNo" Display="Dynamic" 
                                                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">Enter Card Number</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                        ControlToValidate="txtCardNo" ErrorMessage="RegularExpressionValidator" 
                                                        ValidationExpression="\d{16}" Display="Dynamic">please enter valid card number</asp:RegularExpressionValidator>
                                                &nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
                                                </p>
                                            </div>
										    
											<div class="sign-up">
												<h4>Cvv :</h4>
                                                <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                <asp:TextBox ID="txtCvv" runat="server"  value="Type here" 
                                                    onfocus="this.value = '';" 
                                                    onblur="if (this.value == '') {this.value = 'Type here';}" MaxLength="3"></asp:TextBox>
											    <p class="valid">
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ControlToValidate="txtCvv" ErrorMessage="RegularExpressionValidator" 
                                                        ValidationExpression="\d{3}">please enter valid cvv</asp:RegularExpressionValidator>
                                                </p>
                                            </div>

                                            	<div class="sign-up">
												<h4>Card Type :</h4>
                                                    <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                    <asp:DropDownList ID="ddlType" runat="server">
                                                        <asp:ListItem>Select Type</asp:ListItem>
                                                        <asp:ListItem>Visa</asp:ListItem>
                                                        <asp:ListItem>MasterCard</asp:ListItem>
                                                        <asp:ListItem>RuPay</asp:ListItem>
                                                        <asp:ListItem>Maestro</asp:ListItem>
                                                    </asp:DropDownList>
											        <p class="valid">
                                                        &nbsp;</p>
                                            </div>

                                            <div class="sign-up">
												<h4>Expiry Date :</h4>
                                                    <%--<input value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="" type="text">--%>
                                                     <asp:DropDownList ID="ddlMonth" runat="server">
            <asp:ListItem>Jan</asp:ListItem>
            <asp:ListItem>Feb</asp:ListItem>
            <asp:ListItem>Mar</asp:ListItem>
            <asp:ListItem>Apr</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>Jun</asp:ListItem>
            <asp:ListItem>Jul</asp:ListItem>
            <asp:ListItem>Aug</asp:ListItem>
            <asp:ListItem>Sep</asp:ListItem>
            <asp:ListItem>Oct</asp:ListItem>
            <asp:ListItem>Nov</asp:ListItem>
            <asp:ListItem>Dec</asp:ListItem>
        </asp:DropDownList>

        <asp:DropDownList ID="ddlYear" runat="server">
            
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
            <asp:ListItem>2023</asp:ListItem>
            <asp:ListItem>2024</asp:ListItem>
            <asp:ListItem>2025</asp:ListItem>
        </asp:DropDownList>
											        <p class="valid">
                                                        &nbsp;</p>
                                            </div>


                                            	

											<div class="sign-up">
                                                <%--<input value="REGISTER NOW" type="submit">--%>
                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                                                    onclick="btnSubmit_Click" />
											</div>
											
										
									</div>
									<div class="clearfix"></div>
								</div>
								<p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
							</div>
		
		
	</div>
</div>

</asp:Content>

