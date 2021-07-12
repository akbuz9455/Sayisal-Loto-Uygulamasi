<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sayisalLoto.aspx.cs" Inherits="milliPiyango.millipiyango" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            margin-bottom: 0px;
            font-size: x-small;
        }
            .auto-style3 {
                width: 100%;
                background-color: #FFFFFF;
            }
            .auto-style4 {
                width: 150px;
            }
            .auto-style5 {
                width: 182px;
            }
    </style>
</head>
<body>
  <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Sayısal Loto Uygulaması" Font-Bold="True" Font-Size="24pt"></asp:Label>
                &nbsp;<asp:Panel ID="Panel1" runat="server" Width="643px">
         <table class="auto-style3" style="border-style: double">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" rowspan="5">
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" CssClass="auto-style2" Height="0px" RepeatColumns="3" RepeatDirection="Horizontal">
            </asp:CheckBoxList>
                </td>
                <td class="auto-style5">
            <asp:Button ID="Button1" runat="server" Text="kupon yatır" Width="111px" OnClick="Button1_Click" />
                </td>
                <td>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style1"  Text="loto çekiliş" Width="128px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
            <asp:ListBox ID="ListBox1" runat="server" Height="134px" Width="116px"></asp:ListBox>
                </td>
                <td><asp:ListBox ID="ListBox2" runat="server" Height="137px"  Width="110px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
            <asp:Button ID="Button3" runat="server"  Text="ikramiye kontrol" OnClick="Button3_Click" />
                </td>
                <td>
            <asp:Label ID="Label1" runat="server" Text="Sonuç Bekleniyor."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
    
    </div>
    <p>
&nbsp;
     
    </p>
    </form>
    </body>
</html>
