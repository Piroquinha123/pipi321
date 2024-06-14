        <%pagina=request("pagina")%>
        <%if pagina="promo" then%>
            <!--#include file="Promocao.asp"-->
        <%elseif pagina="pinto" then%>
            <!--#include file="Pintores.asp"-->
        <%elseif pagina="obrap" then%>
            <!--#include file="ObrasPintores.asp"-->
        <%elseif pagina="detal" then%>
            <!--#include file="DetalhesObras.asp"-->
        <%elseif pagina="procu" then%>
            <!--#include file="Procura.asp"-->
        <%elseif pagina="repro" then%>
            <!--#include file="RespostaProcura.asp"-->
        <%else%>
            <!--#include file="Vitrine.asp"-->
        <%end if%>