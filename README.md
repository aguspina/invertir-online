# Invertir Online Wrapper for Ruby

This is an unofficial Ruby wrapper for the Invertir Online stock exchange REST API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'invertir-online'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install invertir-online

## Features

#### Current

* Basic implementation of REST API
  * Easy to use authentication
  * No need to generate auth token
  * Methods return parsed JSON
  * No need to generate timestamps
  * No need to generate signatures

## Getting Started

#### REST Client

Require Invertir Online:

```ruby
require 'invertir-online'
```

Create a new instance of the [REST Client](http://www.rubydoc.info/gems/invertir-online):

```ruby
# If you only plan on touching public API endpoints, you can forgo any arguments
client = InvertirOnline::Client::REST.new
# Otherwise provide username and passowrd
client = InvertirOnline::Client::REST.new username: 'x', password: 'y'
```

Create various requests:

```ruby
# Get account_info data
client.account_info
# => {"cuentas"=>[{"numero"=>"9999", "tipo"=>"inversion_Argentina_Pesos", "moneda"=>"peso_Argentino", "disponible"=>0.0, "comprometido"=>0.0, "saldo"=>0.0, #"titulosValorizados"=>0.0, "total"=>0.0, "margenDescubierto"=>0.0, "saldos"=>[{"liquidacion"=>"inmediato", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}, {"liquidacion"=>"hrs24", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}, {"liquidacion"=>"hrs48", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}, {"liquidacion"=>"hrs72", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}, {"liquidacion"=>"masHrs72", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}], "estado"=>"operable"}, {"numero"=>"9999", "tipo"=>"inversion_Argentina_Dolares", "moneda"=>"dolar_Estadounidense", "disponible"=>0.0, "comprometido"=>0.0, "saldo"=>0.0, "titulosValorizados"=>0.0, "total"=>0.0, "margenDescubierto"=>0.0, "saldos"=>[{"liquidacion"=>"inmediato", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}, {"liquidacion"=>"hrs24", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}, {"liquidacion"=>"hrs48", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}, {"liquidacion"=>"hrs72", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}, {"liquidacion"=>"masHrs72", "saldo"=>0.0, "comprometido"=>0.0, "disponible"=>0.0, "disponibleOperar"=>0.0}], "estado"=>"operable"}], "estadisticas"=>[{"descripcion"=>"Anterior", "cantidad"=>0, "volumen"=>0.0}, {"descripcion"=>"Actual", "cantidad"=>0, "volumen"=>0.0}], "totalEnPesos"=>0.0}

#Get current price for a symbol
client.price(mercado: 'bcba', simbolo: 'tsla')
{"ultimoPrecio"=>8844.5, "variacion"=>0.47, "apertura"=>8840.0, "maximo"=>9015.0, "minimo"=>8750.0, "fechaHora"=>"2021-02-05T17:00:05.553", "tendencia"=>"mantiene", "cierreAnterior"=>8844.5, "montoOperado"=>82287964.0, "volumenNominal"=>0, "precioPromedio"=>0.0, "moneda"=>"peso_Argentino", "precioAjuste"=>0.0, "interesesAbiertos"=>0.0, "puntas"=>[{"cantidadCompra"=>1.0, "precioCompra"=>8800.0, "precioVenta"=>9100.0, "cantidadVenta"=>15.0}, {"cantidadCompra"=>7.0, "precioCompra"=>8600.0, "precioVenta"=>9150.0, "cantidadVenta"=>18.0}, {"cantidadCompra"=>1.0, "precioCompra"=>8598.0, "precioVenta"=>9159.0, "cantidadVenta"=>19.0}, {"cantidadCompra"=>1.0, "precioCompra"=>8500.0, "precioVenta"=>9400.0, "cantidadVenta"=>3.0}, {"cantidadCompra"=>14.0, "precioCompra"=>8430.0, "precioVenta"=>9450.0, "cantidadVenta"=>10.0}], "cantidadOperaciones"=>1028}
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aguspina/invertir-online.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
