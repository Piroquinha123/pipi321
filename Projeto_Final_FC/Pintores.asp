<!--#include file="BD.asp"-->

<%consulta="Select * From Pintor"%>
<%set table=conexao.execute(consulta)%>

<table align="center">
    <tr>
        <font size=20px color="red"> <center> Pintores </center> </font> &nbsp
        <td>
            <%do while not table.eof%>    
                <center>
                    <%NomePintores=table("PintorNome")%>
                    <%CodPintor=table("CodPintor")%>
                    <a href="Layout.asp?pagina=obrap&pintor=<%response.write CodPintor%>"> 
                        <%response.write NomePintores%> 
                    </a>
                    <br> 
                    <br>
                </center>
                <%table.movenext%>
            <%loop%>
        </td>
    </tr>
</table>