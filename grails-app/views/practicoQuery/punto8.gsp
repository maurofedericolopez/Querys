<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Punto 8</title>
    <style type="text/css">
      h2{
        color: blueviolet
      }
      td{
        text-align: left
      }
    </style>
  </head>

  <body>
    <h2>Listado de productos</h2>
    <table>
      <thead>
        <tr> 
          <th>
      <div class="titulo_theader">
        Id
      </div>
      <div class="imagen_theader">
        <g:link action="punto8" params="['columnName':'id','order':'asc']">
          <g:img dir="images" file="arrow_mini_up.png"/>
        </g:link>
      </div>
      <div class="imagen_theader">
        <g:link action="punto8" params="['columnName':'id','order':'desc']">
          <g:img dir="images" file="arrow_mini_down.png"/>
        </g:link>
      </div>
    </th>
    <th>
    <div class="titulo_theader">
      Fabricante
    </div>
    <div class="imagen_theader">
      <g:link action="punto8" params="['columnName':'fabricante.name','order':'asc']">
        <g:img dir="images" file="arrow_mini_up.png"/>
      </g:link>
    </div>
    <div class="imagen_theader">
      <g:link action="punto8" params="['columnName':'fabricante.name','order':'desc']">
        <g:img dir="images" file="arrow_mini_down.png"/>
      </g:link>
    </div>
  </th>
  <th>
  <div class="titulo_theader">
    Cantidad
  </div>
  <div class="imagen_theader">
    <g:link action="punto8" params="['columnName':'quantityOnHand','order':'asc']">
      <g:img dir="images" file="arrow_mini_up.png"/>
    </g:link>
  </div>
  <div class="imagen_theader">
    <g:link action="punto8" params="['columnName':'quantityOnHand','order':'desc']">
      <g:img dir="images" file="arrow_mini_down.png"/>
    </g:link>
  </div>
</th>
<th>
<div class="titulo_theader">
  Existente
</div>
<div class="imagen_theader">
  <g:link action="punto8" params="['columnName':'existente','order':'asc']">
    <g:img dir="images" file="arrow_mini_up.png"/></g:link>
</div>
<div class="imagen_theader">
  <g:link action="punto8" params="['columnName':'existente','order':'desc']">
    <g:img dir="images" file="arrow_mini_down.png"/></g:link>
</div>
</th> 
<th>
<div class="titulo_theader">
  Costo de compra
</div>
<div class="imagen_theader">
  <g:link action="punto8" params="['columnName':'costoCompra','order':'asc']">
    <g:img dir="images" file="arrow_mini_up.png"/></g:link>
</div>
<div class="imagen_theader">
  <g:link action="punto8" params="['columnName':'costoCompra','order':'desc']">
    <g:img dir="images" file="arrow_mini_down.png"/></g:link>
</div>
</th> 
<th>
<div class="titulo_theader">
  Descripcion
</div>
<div class="imagen_theader">
  <g:link action="punto8" params="['columnName':'descripcion','order':'asc']">
    <g:img dir="images" file="arrow_mini_up.png"/></g:link>
</div>
<div class="imagen_theader">
  <g:link action="punto8" params="['columnName':'descripcion','order':'desc']">
    <g:img dir="images" file="arrow_mini_down.png"/></g:link>
</div>
</th>
</tr>
</thead>

<g:each var="producto"  in="${productos}">
  <tr>
    <td><g:formatNumber number="${producto.id}"/></td>
  <td>${producto.fabricante.name}</td>  
  <td><g:formatNumber number="${producto.quantityOnHand}"/></td>          
  <td><g:formatBoolean boolean="${producto.existente}" true="Si" false="No"/></td>
  <td><g:formatNumber number="${producto.costoCompra}" type="currency" currencyCode="ARS" /></td>
  <td>${producto.descripcion}</td>
  </tr>        
</g:each>
</table>
</body>
</html>
