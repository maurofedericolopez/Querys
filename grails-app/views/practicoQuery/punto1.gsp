<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 1</title>
  </head>
  <body>
    <h1 align="center">Listado de Productos</h1>
    <table border="1">
      <thead>
        <tr>
          <th>ID</th>
          <th>Fabricante</th>
          <th>Nombre del producto</th>
          <th>Cantidad disponible</th>
          <th>Marcado</th>
          <th>Existente</th>
          <th>Costo</th>
          <th>Descripcion</th>
        </tr>
      </thead>
      <g:each var="producto"  in="${productos}">
        <tr>
          <td>${producto.id}</td>
          <td>${producto.fabricante.name}</td>
          <td>${producto.descripcion}</td>
          <td>${producto.quantityOnHand}</td>
          <td>${producto.marcado}</td>
          <td>${producto.existente}</td>
          <td>${producto.costoCompra}</td>
          <td>${producto.descripcion}</td>
        </tr>        
      </g:each>
      <tr>
      </tr>
    </table>
  </body>
</html>
