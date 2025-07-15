<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Cálculo de Rectángulo</title>
    <link rel="stylesheet" href="Style.css">
</head>
<body>
        <h2>Cálculo de Área y Perímetro de un Rectángulo</h2>
    <%
        String anchoStr = request.getParameter("ancho");
        String altoStr = request.getParameter("alto");

        if(anchoStr == null || altoStr == null){
    %>
        <div class="form-container">
            <form method="post" action="new.jsp">
                <label>Ancho: <input type="text" name="ancho"></label><br>
                <label>Alto: <input type="text" name="alto"></label><br>
                <button type="submit">Calcular</button>
            </form>
        </div>
    <%
        } else {
            try {
                float ancho = Float.parseFloat(anchoStr);
                float alto = Float.parseFloat(altoStr);
                float area = ancho * alto;
                float perimetro = 2 * (ancho + alto);
    %>
        <div class="result-conatiner">
            <h3>Resultados:</h3>
            <p>Área: <strong><%= area %></strong> unidades²</p>
            <p>Perímetro: <strong><%= perimetro %></strong> unidades</p>
            <a href="new.jsp">Calcular de nuevo</a>
        </div>
    <%
            } catch (NumberFormatException e) {
    %>
        <p style="color: red;">Error: Debes ingresar valores numéricos válidos.</p>
        <a href="new.jsp">Volver</a>
    <%
            }
        }
    %>
</body>
</html>

