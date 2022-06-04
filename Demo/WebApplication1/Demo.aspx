<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="WebApplication1.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.6.0.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" ID="sm1" EnablePageMethods="true" />
        <div>
            <script type="text/javascript">
                function getValues() {
                    var text1 = $('#txt1').val();
                    PageMethods.GetValues(text1, getValues_Success, getValues_Fail)
                }
                function getValues_Success(msg) {
                    $('#div1').html(msg);
                }

                function getValues_Fail(msg) {
                    alert(msg.get_message());
                }

            </script>

            <input type="text" id="txt1" />
            <br />

            <input type="button" onclick="getValues();" value="Get" />
            <br />
            <br />

            <div id="div1"></div>

        </div>
    </form>
</body>
</html>
