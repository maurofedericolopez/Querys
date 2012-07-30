<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 7</title>
  </head>
  <body>
    <h1 align="center">Listado de órdenes de compra</h1>

    <div align="right">
      <g:form action="punto7" name="ordenar">
        <g:select  name="comboOrden" value="" from="${['id','cliente','producto','cantidad','costoEnvio','fechaCompra','fechaEnvio','envioCompany']}" noSelection="['0':'-Elija un atributo-']" />
        <g:submitButton class="boton" name="orden" value="Ordenar" />
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
