json.stores(@stores) do |store|
  json.(store, :id, :address, :name)
end

json.success :true
json.total_elements @stores.count
