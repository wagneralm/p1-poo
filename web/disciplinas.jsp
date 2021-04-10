<%-- 
    Document   : disciplinas
    Created on : 10 de abr. de 2021, 18:39:00
    Author     : wagner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova Poo - Disciplinas</title>
    </head>
    <body>
        <header>
            <%@include file="WEB-INF/jspf/header.jspf" %>
        </header>
        <main>
            <%if (session.getAttribute("session.username") != null) { %>
            <section>

                <table border="1">      
                    <thead>
                        <tr>
                            <th>Matéria</th>
                            <th>P1</th>
                            <th>P2</th>
                            <th>Nota</th>
                        </tr>
                    </thead>
                    <form method="post">
                        <tbody>
                            <tr>
                                <td>Sistema de Informação</td>
                                <td><input type="number" step=".01" name="p1si" value="<%=session.getAttribute("session.p1si")%>"></td>
                                <td><input type="number" step=".01" name="p2si"value="<%=session.getAttribute("session.p2si")%>"></td>
                                <td>
                                    <%if (session.getAttribute("session.p1si")!= null || session.getAttribute("session.p2si")!= null) {%>
                                    <%="P1: " + session.getAttribute("session.p1si") + " - P2: " + session.getAttribute("session.p2si")%>
                                    <%}%>
                                </td>
                            </tr>
                            <tr>
                                <td>Economia e Finanças</td>
                                <td><input type="number" step=".01" name="p1ef" value="<%=session.getAttribute("session.p1ef")%>"></td>
                                <td><input type="number" step=".01" name="p2ef"value="<%=session.getAttribute("session.p2ef")%>"></td>
                                <td>
                                    <%if (session.getAttribute("session.p1ef")!= null || session.getAttribute("session.p2ef")!= null) {%>
                                    <%="P1: " + session.getAttribute("session.p1ef") + " - P2: " + session.getAttribute("session.p2ef")%>
                                    <%}%>
                                </td>
                            </tr>
                            <tr>
                                <td>Sistemas Operacionais</td>
                                <td><input type="number" step=".01" name="p1so" value="<%=session.getAttribute("session.p1so")%>"></td>
                                <td><input type="number" step=".01" name="p2so"value="<%=session.getAttribute("session.p2so")%>"></td>
                                <td>
                                    <%if (session.getAttribute("session.p1so")!= null || session.getAttribute("session.p2so")!= null) {%>
                                    <%="P1: " + session.getAttribute("session.p1so") + " - P2: " + session.getAttribute("session.p2so")%>
                                    <%}%>
                                </td>
                            </tr>
                            <tr>
                                <td>Engenahria de Software I</td>
                                <td><input type="number" step=".01" name="p1es" value="<%=session.getAttribute("session.p1es")%>"></td>
                                <td><input type="number" step=".01" name="p2es"value="<%=session.getAttribute("session.p2es")%>"></td>
                                <td>
                                    <%if (session.getAttribute("session.p1es")!= null || session.getAttribute("session.p2es")!= null) {%>
                                    <%="P1: " + session.getAttribute("session.p1es") + " - P2: " + session.getAttribute("session.p2es")%>
                                    <%}%>
                                </td>
                            </tr>
                            <tr>
                                <td>Sociedade e Tecnologia</td>
                                <td><input type="number" step=".01" name="p1st" value="<%=session.getAttribute("session.p1st")%>"></td>
                                <td><input type="number" step=".01" name="p2st"value="<%=session.getAttribute("session.p2st")%>"></td>
                                <td>
                                    <%if (session.getAttribute("session.p1st")!= null || session.getAttribute("session.p2st")!= null) {%>
                                    <%="P1: " + session.getAttribute("session.p1st") + " - P2: " + session.getAttribute("session.p2st")%>
                                    <%}%>
                                </td>
                            </tr>
                            <tr>
                                <td>Programação Orientada a Objetos</td>
                                <td><input type="number" step=".01" name="p1poo" value="<%=session.getAttribute("session.p1poo")%>"></td>
                                <td><input type="number" step=".01" name="p2poo"value="<%=session.getAttribute("session.p2poo")%>"></td>
                                <td>
                                    <%if (session.getAttribute("session.p1poo")!= null || session.getAttribute("session.p2poo")!= null) {%>
                                    <%="P1: " + session.getAttribute("session.p1poo") + " - P2: " + session.getAttribute("session.p2poo")%>
                                    <%}%>
                                </td>
                            </tr>
                            <tr>
                                <td>Linguagem de Programação IV</td>
                                <<td><input type="number" step=".01" name="p1lp" value="<%=session.getAttribute("session.p1lp")%>"></td>
                                <td><input type="number" step=".01" name="p2lp"value="<%=session.getAttribute("session.p2lp")%>"></td>
                                <td>
                                    <%if (session.getAttribute("session.p1lp")!= null || session.getAttribute("session.p2lp")!= null) {%>
                                    <%="P1: " + session.getAttribute("session.p1lp") + " - P2: " + session.getAttribute("session.p2lp")%>
                                    <%}%>
                                </td>
                            </tr>
                        </tbody>
                </table>
                <input type="submit" value="Atualizar Notas" name="atualizar">
                </form>
            </section>

            <%}else{%>
            <section>
                <p>Por favor, faça o login para acessar o conteúdo desta página!</p>
            </section>
            <%}%>

        </main>
    </body>
</html>
