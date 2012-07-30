package facturacion

class PracticoQueryController {
    static layout="main"

    def ejemplo() {         
        ["clientes":Cliente.findAllByLimiteCreditoGreaterThan(50000)]
    }

    def punto1() {
        ["productos":Producto.list()]
    }

    def punto2() {
        ["clientes":Cliente.list()]
    }

    def punto3() {
        ["fabricantes":Fabricante.list()]
    }

    def punto4() {
        ["clientes":Cliente.findAll(sort:"codigoDescuento.porcentaje")]
    }

    def punto5() {
        def fabricantes = [:]
        Fabricante.list().each {
            fabricantes.putAt(it, Producto.findAllByFabricante(it))
        }
        ["fabricantes":fabricantes]
    }

    def punto6() {
        def clientes = [:]

        Cliente.list().each {
            clientes.putAt(it, OrdenCompra.findAllByCliente(it))
        }

        ["clientes":clientes]
    }

    def punto7() {
        def modelo = [:]
        def atributo = params.comboOrden

        if(request.method == 'POST') {
            if(atributo != '0' && atributo != '-Elija un atributo-') {
                modelo.putAt("ordenes",OrdenCompra.list(sort: atributo, order: 'asc'))
            }
        }
        else
            modelo.putAt("ordenes",OrdenCompra.list())

        return modelo
    }

    def punto8() {
       def name = params.columnName
       def order = params.order
       if (name != ''){
           ["productos":Producto.list(sort:name, order:order)]
       }
       else
         ["productos":Producto.list()]
    }

    def punto9(){
        def modelo = ["clientes":Cliente.list()]
        def id = params.comboOrden

        if(request.method == 'POST' && id != '0') {            
            def i = Long.parseLong(id)                        
            modelo.putAt("ordenes",OrdenCompra.findAllByCliente(Cliente.findAllById(i)[0])) 
            modelo.putAt("id",id)
        }
        else
            modelo.putAt("ordenes",OrdenCompra.list())

        return modelo
    }

    def punto10() {
        def modelo = [:]
        def costo = params.comboOrden

        if(request.method == 'POST' && costo != '0') {
            def c = Double.parseDouble(costo)
            modelo.putAt("productos",Producto.findAllByCostoCompraGreaterThan(c))
        }
        else
            modelo.putAt("productos",Producto.list())

        return modelo
    }

    def punto11() {
        def modelo = [:]
        def fechaUno = params.fechaUno
        def fechaDos = params.fechaDos

        if(request.method == 'POST' && ( fechaUno != '-Sin filtro-' && fechaDos != '-Sin filtro-')) {
            def f1 = params.date('fechaUno', 'yyyy-MM-dd')
            def f2 = params.date('fechaDos', 'yyyy-MM-dd')
            modelo.putAt("ordenes",OrdenCompra.findAllByFechaCompraBetween(f1, f2))
        }
        else
            modelo.putAt("ordenes",OrdenCompra.list())

        return modelo
    }
}
