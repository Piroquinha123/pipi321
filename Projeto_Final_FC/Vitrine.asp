<!--#include file="BD.asp"-->

<%yunli="Select * From Obra Where Flag_Vitrine = true"%>
<%set table=conexao.execute(yunli)%>

<table border=1 width="100%" height="100%">
    <tr>
        <font size=50px color="red"> <center> Vitrine </center> </font>
    </tr>
    <%do while not table.eof%>
        <tr>           
            <%pintorcod=table("CodPintor")%>
            <td> 
                <a href="Layout.asp?pagina=detal&cod=<%response.write table("CodObra")%>&codpintor=<%response.write pintorcod%>">
                    <center>
                        <img src="imagens/obras/<%response.write table("Foto")%>_p.jpg"> <br>
                        <%response.write table("Obra")%>
                    </center>
                </a>
            </td>
            <%table.movenext%>
            <%if not table.eof then%>
                <td>
                    <a href="Layout.asp?pagina=detal&cod=<%response.write table("CodObra")%>&codpintor=<%response.write pintorcod%>">
                        <center>
                            <img src="imagens/obras/<%response.write table("Foto")%>_p.jpg"> <br>
                            <%response.write table("Obra")%>
                        </center>
                    </a>
                </td>
                <%table.movenext%>
            <%end if%>
        </tr>
    <%loop%>
</table>