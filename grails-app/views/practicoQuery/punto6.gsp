<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 6</title>
  </head>
  <body>
    <h1 align="center">Listado de órdenes por cliente</h1>
  <g:each_pair collection="${clientes}" var="ordenes" key="cliente">
    </br>
    <h2 style="color: #008080;">${cliente.nombre}</h2>
    </br>
    <h5>Dirección: ${cliente.lineaDireccion1}, ${cliente.lineaDireccion2}</h5>
    <h5>Telefono: ${cliente.telefono}</h5>
    <h5>Email: ${cliente.email}</h5>
    <g:if test="${ordenes}">
      <table border="1">
        <caption><h4>Órdenes</h4></caption>
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
        <g:each var="orden"  in="${ordenes}">
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
    </g:if>
    <g:else>
      </br>
      <h4 style="color: red;" align="center">No tiene ordenes de compra</h4>
    </g:else>
  </g:each_pair>
</body>
</html>
