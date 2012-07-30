<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 2</title>
  </head>
  <body>
    <h1 align="center">Listado de clientes</h1>
    <table border="1">
      <thead>
        <tr>
          <th>Nombre</th>
          <th>Dirección</th>
          <th>Ciudad</th>
          <th>Provincia</th>
          <th>Teléfono</th>
          <th>Fax</th>
          <th>Email</th>
          <th>Limite de credito</th>
          <th>Descuento</th>
        </tr>
      </thead>
      <g:each var="cliente"  in="${clientes}">
        <tr>
          <td>${cliente.nombre}</td>
          <td>${cliente.lineaDireccion1}, ${cliente.lineaDireccion2}</td>
          <td>${cliente.ciudad}</td>
          <td>${cliente.provincia}</td>
          <td>${cliente.telefono}</td>
          <td>${cliente.fax}</td>
          <td>${cliente.email}</td>
          <td style="text-align: right">
            <!-- Utilización del tag para formateo de numeros-->
        <g:formatNumber number="${cliente.limiteCredito}" type="currency" currencyCode="ARS" />
        <td style="text-align: right">${cliente.codigoDescuento.porcentaje}%</td>
        </td>
        </tr>        
      </g:each>
    </table>
  </body>
</html>
