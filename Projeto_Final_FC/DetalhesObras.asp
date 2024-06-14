<!--#include file="BD.asp"-->

<%obracod=request.querystring("cod")%>
<%queen="Select * From Obra Where CodObra = " & obracod & ";"%>
<%set tabela=conexao.execute(queen)%>

<table align="center">
    <tr>
        <font size=6px color="red"> <center> Detalhes da obra <b> <%response.write tabela("Obra")%> </b> </center> </font> &nbsp
    </tr>
    <tr>
        <td>
            <img src="imagens/obras/<%response.write tabela("Foto")%>_g.jpg">
        </td>
        <td>
            <center>
                <%response.write tabela("ObraDescricao")%>
                <br>
                <br>
                <%pintor=request.querystring("codpintor")%>
                <%paulmcc="Select * From Pintor Where CodPintor = " & pintor & ";"%>
                <%set tata=conexao.execute(paulmcc)%>
                <%response.write tata("PintorNome")%> 
                <br>
                <br>
                <%response.write "R$ " & tabela("Preco") & ",00"%>
                <br>
                <br>
                <a href="">
                    <img src="imagens/comprar.gif" width="40%">
                </a>
            </center>
        </td>
    </tr>
</table>