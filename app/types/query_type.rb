QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"
  field :shops do
    type types[ShopType]
    resolve -> (obj, args, ctx) {
      Shop.all
    }
  end
  field :products do
    type types[ProductType]
    resolve -> (obj, args, ctx) {
      Product.all
    }
  end
  field :orders do
    type types[OrderType]
    resolve -> (obj, args, ctx) {
      Order.all
    }
  end
  field :line_items do
    type types[LineItemType]
    resolve -> (obj, args, ctx) {
      LineItem.all
    }
  end
end
