<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 5</title>
  </head>
  <body>
    <h1 align="center">Listado de fabricantes con sus respectivos productos</h1>
  <g:each_pair collection="${fabricantes}" var="productos" key="fabricante">
    </br>
    <h1 style="color: #008080;"><b>${fabricante.name}</b></h1>
    <h5>Direccion: ${fabricante.lineaDireccion1}, ${fabricante.lineaDireccion2}</h5>
    <h5>Teléfono: ${fabricante.telefono}</h5>
    <h5>Email: ${fabricante.email}</h5>
    <table border="1">
      <caption title="jajajaja"><h4>Productos</h4></caption>
      <thead>
        <tr>

          <th>Descripcion</th>

          <th>Precio de Compra</th>

        </tr>
      </thead>
      <tbody>
      <g:each var="prod"  in="${productos}">
        <tr>

          <td>${prod.descripcion}</td>

          <td>${prod.costoCompra}</td>

        </tr>
      </g:each>
      </tbody>
    </table>
  </g:each_pair>
</body>
</html>
