<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 10</title>
  </head>
  <body>
    <h1 align="center">Listado de productos</h1>

    <div align="right">
      <g:form action="punto10" name="ordenar">
        <g:select  name="comboOrden" value="" from="${['50','100','500','1000']}" noSelection="['0':'-Elija un costo-']" />
        <g:submitButton class="boton" name="orden" value="Filtrar" />
      </g:form>
    </div>

    <table border="1">
      <thead>
        <tr>
          <th>ID</th>
          <th>Fabricante</th>
          <th>Nombre del producto</th>
          <th>Cantidad existente</th>
          <th>Costo</th>
        </tr>
      </thead>
      <g:each var="producto"  in="${productos}">
        <tr>
          <td>${producto.id}</td>
          <td>${producto.fabricante.name}</td>
          <td>${producto.descripcion}</td>
          <td>${producto.quantityOnHand}</td>
          <td>${producto.costoCompra}</td>
        </tr>        
      </g:each>
      <tr>
      </tr>
    </table>
  </body>
</html>
