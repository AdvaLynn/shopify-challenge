ProductType = GraphQL::ObjectType.define do
 name "Product"
  description "A Product"
  field :id, types.ID
  field :name, types.String
  field :shop do
    type ShopType
    resolve -> (product, args, ctx) {
      product.shop
    }
  end
  field :line_items do
    type types[LineItemType]
    resolve -> (product, args, ctx) {
      product.line_items
    }
  end
end
