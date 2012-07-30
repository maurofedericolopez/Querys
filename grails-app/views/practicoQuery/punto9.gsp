<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 9</title>
  </head>
  <body>
    <h1 align="center">Listado de órdenes de compra por cliente</h1>

    <div align="right">
      <g:form action="punto9" name="ordenar">
        <g:select  name="comboOrden" optionKey="id" value="" from="${clientes}" optionValue="nombre" noSelection="['0':'-Elija un cliente-']" />
        <g:submitButton class="boton" name="orden" value="Ordenar" />
      </g:form>
    </div>

    <div align="left">
      <h2 align="center">Listado de ordenes de compra</h2>
      <g:if test="${ordenes}">
        <table>
          <thead>
            <tr>
              <th>Id</th> 
              <th>Nombre del producto</th>
              <th>Cantidad</th>
              <th>Fecha de compra</th>
              <th>Fecha de envío</th>
              <th>Compañía de envío</th>
            </tr>
          </thead>
          <tbody>
          <g:each var="orden"  in="${ordenes}">
            <tr>
              <td><g:formatNumber number="${orden.id}"/></td>
            <td>${orden.producto.descripcion}</td>
            <td><g:formatNumber number="${orden.cantidad}" type="number"/></td>
            <td><g:formatDate format="dd-MM-yyyy" date="${orden.fechaCompra}" /></td>
            <td><g:formatDate format="dd-MM-yyyy" date="${orden.fechaEnvio}" /></td>
            <td>${orden.envioCompany}</td>
            </tr>
          </g:each>
          </tbody>
        </table>
      </g:if>
      <g:else>
        </br>
        <h4 style="color:red">El cliente no tiene ordenes de compra</h4 style="color:red">
      </g:else>
    </div>
  </body>
</html>
