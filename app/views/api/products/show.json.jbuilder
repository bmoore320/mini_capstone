# json.partial! "product.json.jbuilder", inside_product: @product

# json.id inside_product.id
# json.name inside_product.name
# json.price inside_product.price
# json.image_url inside_product.image_url
# json.description inside_product.description

json.id @product.id
json.name @product.name
json.price @product.price
json.image_url @product.image_url
json.description @product.description