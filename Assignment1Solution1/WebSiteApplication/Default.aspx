<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSiteApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Multiple Services WebsiteApplication</h1>
        </section>

        <div class="row">
            <section class="col-md-6" aria-labelledby="TemperatureConversionService">
                <br/>
                <h2 id="TemperatureConversionService">Temperature Conversion</h2>
                <br/>
                <div class="container">
                    <div class="row">
                    <div class="col-md-6"><asp:Label ID="Label2" runat="server" Text="Celsius" Font-Bold="true"></asp:Label></div>
                    <div class="col-md-6"> <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox></div>
                    </div>
                    <%--<div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3"><asp:Button ID="Button2" runat="server" Text="Convert" OnClick="Button2_Click"/></div>
                    </div>--%>
                    <div class="row"><br />
                    <div class="col-md-8"><sub>** Press Enter or Remove Text focus when done!!</sub></div>
                    </div><br />
                    <div class="row">
                    <div class="col-md-6"> <asp:Label ID="Label3" runat="server" Text="Fahrenheit " Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-6"> <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></div>
                    </div>
                </div> 
            </section>

            <section class="col-md-6" aria-labelledby="NumberSorting">
                <br />
                <h2 id="NumberSorting">Number Sorting</h2>
                <br />
                <div class="container">
                <div class="row">
                <div class="col-md-6"><asp:Label ID="Label1" runat="server" Text="Input" Font-Bold="true"></asp:Label></div>
                <div class="col-md-6"> <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="False"></asp:TextBox></div>
                </div>
                <br />
                <div class="row">
                <div class="col-md-6"><sub>** Enter input like 3,1,2</sub></div>
                <div class="col-md-6"><asp:Button ID="Button2" runat="server" Text="Sort" OnClick="Button2_Click"/></div>
                </div>
                <br/>
                <div class="row">
                <div class="col-md-6"> <asp:Label ID="Label4" runat="server" Text="Result " Font-Bold="true"></asp:Label>
                </div>
                <div class="col-md-6"> <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="False"></asp:TextBox></div>
                </div>
            </div> 
            </section>
        </div>
    </main>

</asp:Content>
