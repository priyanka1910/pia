<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vehicleDetails.aspx.cs" Inherits="TransportMangSystem.vehicleDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vehicle Details</title>
    <link href="Bootstraps/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstraps/jquery.min.js"></script>
            <script src="Bootstraps/bootstrap.min.js"></script>
</head>
<body class="container" style="background-color: azure">
    <div class="page-header">
        <h1>Vehicle Details</h1>

    </div>

    <form id="form1" runat="server">
        <div class="panel panel-primary" style="background-color: aliceblue">
            <div class="panel-heading ">Vehicle Details</div>
            <div class="panel-body">
                <%--//  <div class="container" style="background-color: antiquewhite">--%>

                <div class="form-group">
                    <strong>
                        <asp:Label Text="Vehicle No" class="text-left" runat="server" ID="lblVehicleNo" Width="150%" /></strong>
                    <asp:TextBox runat="server" class="form-control" ID="txtvehicleNo" Width="214px" Height="22px" placeholder="enter vehicle no." />

                </div>


                <div class="form-group">
                    <strong>
                        <asp:Label Text="Vehicle Name" CssClass="dropdown" class="form-control" runat="server" ID="dropdownVehicleName"></asp:Label>
                    </strong>
                    <asp:DropDownList ID="DDLVehicleName" runat="server">
                        <asp:ListItem>Please Choose a Vehicle Name</asp:ListItem>
                        <asp:ListItem>Chasee</asp:ListItem>
                        <asp:ListItem>Truck</asp:ListItem>
                        <asp:ListItem>other</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <div class="form-group">
                    <strong>
                        <asp:Label Text="Vehicle Type" CssClass="dropdown" class="form-control" runat="server" ID="lblVehicleType"></asp:Label>
                    </strong>
                    <asp:DropDownList ID="DDLVehicleType" runat="server">
                        <asp:ListItem>Please Choose a Vehicle Type</asp:ListItem>
                        <asp:ListItem>FourWheeler</asp:ListItem>
                        <asp:ListItem>TenWheeler</asp:ListItem>
                        <asp:ListItem>other</asp:ListItem>
                    </asp:DropDownList>

                </div>

                <%--                <div class="form-group">
                    <strong>
                        <asp:Label runat="server" ID="lblVehicleType" Text="Vehicle Type:" for="name"></asp:Label></strong>
                    <label class="radio-inline" for="name">
                    <div class="radio-inline" id="VehicleType">
                    <asp:RadioButton ID="rbfour" runat="server" GroupName="" Text="Fourwheeler" />
                    <asp:RadioButton ID="rbten" runat="server" GroupName="" Text="Tenwheeler" /></div>
                </div>--%>
            </div>
            <div class="panel panel-primary" style="background-color: aliceblue">
                <div class="panel-heading">Permit Details</div>
                <div class="panel-body">
                    <div class="form-group">

                        <strong>
                            <asp:Label runat="server" Text="Permit Type" ID="lblPermit" for="name" CssClass="dropdown" class="form-control"></asp:Label></strong>
                        <asp:DropDownList ID="DDLPermit" runat="server">
                            <asp:ListItem>Please Choose a Permit Type</asp:ListItem>
                            <asp:ListItem>International</asp:ListItem>
                            <asp:ListItem>National</asp:ListItem>
                            <asp:ListItem>other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <strong>
                            <asp:Label Text="Permit No." runat="server" ID="lblPermitNo" class="text-left"></asp:Label></strong>
                        <asp:TextBox runat="server" class="form-control" ID="txtPermitNo" Width="214px" Height="22px" placeholder="Enter Permit No." />
                    </div>
                    <div class="form-group">
                        <strong>
                            <asp:Label runat="server" ID="lblstdate" for="name" Text="Start Date:"></asp:Label></strong>
                        <%--<input type="date" id="stDate" value="" name="" />--%>
                        <asp:TextBox runat="server" class="form form-control" ID="txtStartDate" Width="214px" Height="22px" type="date" />

                        <strong>
                            <asp:Label runat="server" ID="lblEdDate" Text="End Date:" for="name"></asp:Label></strong>
                        <%--<input type="date" id="Date1" value="" name="" />--%>
                        <asp:TextBox runat="server" class="form-control" ID="txtEndDate" Width="214px" Height="22px" type="date" />

                    </div>

                </div>
            </div>

            <br />
            <div class="container" style="background-color: aliceblue">
                <asp:Button type="button" runat="server" class="btn btn-success" Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click"></asp:Button>
                <asp:Button type="button" runat="server" class="btn  btn-danger" Text="Cancel" ID="btnCancel" OnClick="btnCancle_Click"></asp:Button>
                <asp:Button type="button" runat="server" class="btn btn-warning" Text="Updte" ID="btnUpdate" OnClick="btnUpdate_Click"></asp:Button>
                <asp:Button type="button" runat="server"  class="btn btn-primary" Text="Delete" ID="btnDelete" OnClick="btnDelete_Click" /> 
                <asp:Button type="button" runat="server" class="btn btn-info" Text="Search" ID="btnSearch" OnClick="btnSearch_Click" ></asp:Button>
            </div>
            
             </div>
    </form>
</body>
</html>
