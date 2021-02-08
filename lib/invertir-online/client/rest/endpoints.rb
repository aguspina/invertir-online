module InvertirOnline
  module Client
    class REST
      ENDPOINTS = {

        # Account API Endpoints
        buy_order:        'v2/operar/Comprar',
        sell_order:       'v2/operar/Vender',
        all_orders:       'v2/operaciones',
        account_info:     'v2/estadocuenta',
        price:            'v2/mercado/titulos/simbolo/cotizacion'
      }.freeze
    end
  end
end
