<!--#include file="BD.asp"-->

<%db="Select * From Obra Where Flag_Promocao = true"%>
<%set tabela=conexao.execute(db)%>

<table border=1 width="100%" height="100%">
    <tr>
        <font size=50px color="red"> <center> Promo?§?£o </center> </font>
    </tr>
    <%do while not tabela.eof%>
        <tr>
            <%pintorcod=tabela("CodPintor")%>
            <td>
                <a href="Layout.asp?pagina=detal&cod=<%response.write tabela("CodObra")%>&codpintor=<%response.write pintorcod%>">
                    <center> 
                        <img src="imagens/obras/<%response.write tabela("Foto")%>_p.jpg"> 
                        <br>
                        <%response.write tabela("Obra")%> 
                    </center>
                </a>
            </td>
            <%tabela.movenext%>
            <%if not tabela.eof then%>
                <td>
                    <a href="Layout.asp?pagina=detal&cod=<%response.write tabela("CodObra")%>&codpintor=<%response.write pintorcod%>">
                        <center> 
                            <img src="imagens/obras/<%response.write tabela("Foto")%>_p.jpg"> 
                            <br>
                            <%response.write tabela("Obra")%> 
                        </center>
                    </a>
                </td>
                <%tabela.movenext%>
            <%end if%>
        </tr>
    <%loop%>
</table>