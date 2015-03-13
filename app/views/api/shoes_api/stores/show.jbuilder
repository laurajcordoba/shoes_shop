json.articles(@store.articles) do |article|

  json.(article, :id)
  json.(article, :description)
  json.(article, :name)
  json.(article, :price)
  json.(article, :total_in_shelf)
  json.(article, :total_in_vault)
end

json.success :true
json.total_elements @store.articles.count
