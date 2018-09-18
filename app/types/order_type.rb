OrderType = GraphQL::ObjectType.define do
 name "Order"
  description "An Order"
  field :id, types.ID
  field :order_num, types.Int
  field :shop do
    type ShopType
    resolve -> (order, args, ctx) {
      order.shop
    }
  end
  field :line_items do
    type types[LineItemType]
    resolve -> (order, args, ctx) {
      order.line_items
    }
  end
end
