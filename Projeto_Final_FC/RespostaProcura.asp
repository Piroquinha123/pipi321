<!--#include file="BD.asp"-->

<%Maika="Select Pintor.*, Obra.* From Obra Inner Join Pintor On Obra.CodPintor = Pintor.CodPintor Where Obra.Obra like '%" & request.form("txtProcurar") & "%' or Obra.ObraDescricao like '%" & request.form("txtProcurar") & "%' or Pintor.PintorNome like '%" & request.form("txtProcurar") & "%'"%>
<%set table=conexao.execute(Maika)%>

<font size=4>
    <%if table.eof then%>
        <center>
            <font size=6>
                    <b>
                        <%response.write "Sem resultados para a sua pesquisa!"%> <br> <br>
                    </b>
            </font>
            <font color="red" size="5">
                <%response.write ("Procurar por: ")%>
                <form action="Layout.asp?pagina=repro" method="post"> <br>
                    <input type="textbox" value="" name="txtProcurar"> <br> <br>
                    <input type="submit" value="Procurar" name="btnProcurar"> <br> <br>
                </form>
            </font>
        </center>        
    <%else%>
        <center>
            <font color="red" size="5">
                <%response.write ("Procurar por: ")%>
                <form action="Layout.asp?pagina=repro" method="post"> <br>
                    <input type="textbox" value="" name="txtProcurar"> <br> <br>
                    <input type="submit" value="Procurar" name="btnProcurar"> <br> <br>
                </form>
            </font>
            <font color="red" size="5">
                <%response.write ("Resultados da pesquisa:")%> <br> <br>
            </font>
        </center>
        <%do while not table.eof%>
            <a href="Layout.asp?pagina=detal&cod=<%response.write table("CodObra")%>&codpintor=<%response.write table("Obra.CodPintor")%>"> 
                <%response.write table("Obra")%> <br>
            </a>
            <%response.write table("ObraDescricao")%> <br> <br>
            <%table.movenext%>
        <%loop%>
    <%end if%>
</font>