<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 3</title>
  </head>
  <body>
    <h1 align="center">Listado de clientes con limite de credito mayor a 50000:</h1>
    <table border="1">
      <thead>
        <tr>
          <th>ID</th>
          <th>Nombre</th>
          <th>Dirección</th>
          <th>Ciudad</th>
          <th>Teléfono</th>
          <th>Fax</th>
          <th>Email</th>
          <th>REP</th>
        </tr>
      </thead>
      <g:each var="fabricante"  in="${fabricantes}">
        <tr>
          <td>${fabricante.id}</td>
          <td>${fabricante.name}</td>
          <td>${fabricante.lineaDireccion1}, ${fabricante.lineaDireccion2}</td>
          <td>${fabricante.ciudad}</td>
          <td>${fabricante.telefono}</td>
          <td>${fabricante.fax}</td>
          <td>${fabricante.email}</td>
          <td>${fabricante.rep}</td>
        </tr>        
      </g:each>
      <tr>
        
      </tr>
    </table>
  </body>
</html>
