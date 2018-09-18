LineItemType = GraphQL::ObjectType.define do
 name "LineItem"
  description "A Line Item"
  field :id, types.ID
  field :name, types.String
  field :price, types.Int
  field :quantity, types.Int
  field :product do
    type ProductType
    resolve -> (line_item, args, ctx) {
      line_item.product
    }
  end
=begin
  field :order do
    type OrderType
    resolve -> (line_item, args, ctx) {
      line_item.order
    }
  end
=end
end
