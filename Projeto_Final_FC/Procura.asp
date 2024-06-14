<!--#include file="BD.asp"-->
<center>
    <font color="red">
        <%response.write ("Procurar por: ")%>
    </font>
    <form action="Layout.asp?pagina=repro" method="post">
        <input type="textbox" value="" name="txtProcurar"> <br> <br>
        <input type="submit" value="Procurar" name="btnProcurar">
    </form>
</center>