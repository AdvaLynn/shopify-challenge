ShopType = GraphQL::ObjectType.define do
 name "Shop"
  description "A Shop"
  field :id, types.ID
  field :name, types.String
  field :products do
    type types[ProductType]
    resolve -> (shop, args, ctx) {
      shop.products
    }
  end
=begin
  field :orders do
    type types[OrderType]
    resolve -> (shop, args, ctx) {
      shop.orders
    }
  end
=end
end
