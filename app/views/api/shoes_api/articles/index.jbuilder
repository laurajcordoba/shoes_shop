json.articles(@articles) do |article|
  json.(article, :id)
  json.(article, :description)
  json.(article, :name)
  json.(article, :price)
  json.(article, :total_in_shelf)
  json.(article, :total_in_vault)

  json.store_name article.store.name
end

json.success :true
json.total_elements @articles.count
