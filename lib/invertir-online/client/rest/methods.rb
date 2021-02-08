module InvertirOnline
  module Client
    class REST
      METHODS = [
        # Account API Methods
        # #create_buy_order!
        { name: :create_buy_order!, client: :signed,
          action: :post, endpoint: :buy_order },
        # #create_sell_order!
        { name: :create_sell_order!, client: :signed,
          action: :post, endpoint: :sell_order },
        # #all_orders
        { name: :all_orders, client: :signed,
          action: :get, endpoint: :all_orders },
        # #account_info
        { name: :account_info, client: :signed,
          action: :get, endpoint: :account_info },
        # #price
        { name: :price, client: :signed,
          action: :get, endpoint: :price },
      ].freeze
    end
  end
end
