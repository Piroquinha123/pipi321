<!--#include file="BD.asp"-->

<%pintor=request("pintor")%>
<%pairot="Select * From Pintor Where CodPintor = " & pintor & ";"%>
<%set tabela=conexao.execute(pairot)%>

<table width="50%" height="20%" align="center" border="0">
    <tr>
        <font size=50px color="red"> 
            <center>
                Obras de <%response.write tabela("PintorNome")%>
            </center>
        </font>
    </tr>
    <%lw="Select * From Obra Where CodPintor = " & pintor & ";"%>
    <%set table=conexao.execute(lw)%>
    <%do while not table.eof%>
        <tr>
            <td>
                <a href="Layout.asp?pagina=detal&cod=<%response.write table("CodObra")%>&codpintor=<%response.write pintor%>"> 
                    <%response.write table("Obra")%> 
                </a>
                <br> 
                <br>
            </td>
            <%table.movenext%>
            <%if not table.eof then%>
                <td>
                    <a href="Layout.asp?pagina=detal&cod=<%response.write table("CodObra")%>&codpintor=<%response.write pintor%>"> 
                        <%response.write table("Obra")%> 
                    </a> 
                    <br>
                    <br>
                </td>
                <%table.movenext%>
            <%end if%>
        </tr>
    <%loop%>
</table>