<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 11</title>
  </head>
  <body>
    <div align="right">
      <g:form action="punto11" name="filtrar">
        Desde
        <g:datePicker name="fechaUno" value="" noSelection="['':'-Sin filtro-']" precision="day" />
        </br>
        Hasta
        <g:datePicker name="fechaDos" value="" default="${new Date()}" noSelection="['':'-Sin filtro-']" precision="day" />
        </br>
        <g:submitButton class="boton" name="filtrar" value="Filtrar" />
      </g:form>
    </div>

    <table border="1">
      <caption><h1 style="font-weight:normal;font-size:200%;color: red">Órdenes</h1></caption>
      <thead>
        <tr>
          <th>Nombre del producto</th>
          <th>Cantidad</th>
          <th>Fecha de compra</th>
          <th>Fecha de envio</th>
          <th>Compañia de envio</th>
        </tr>
      </thead>
      <tbody>
      <g:each var="orden" in="${ordenes}">
        <tr>
          <td>${orden.producto.descripcion}</td>
          <td>${orden.cantidad}</td>
          <td>${orden.fechaCompra}</td>
          <td>${orden.fechaEnvio}</td>
          <td>${orden.envioCompany}</td>
        </tr>
      </g:each>
    </tbody>
  </table>
  </body>
</html>
