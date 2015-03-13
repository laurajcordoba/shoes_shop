tate = Store.create(name: 'Tate', address: 'Rivadavia 322')
rossetti = Store.create(name: 'Rosetti', address: 'Velez Sarsfield 600')

Article.create(name: 'Hush Puppies', description: 'Zapato', price: 500, total_in_shelf: 20, total_in_vault: 100, store_id: tate.id)
Article.create(name: 'Nike', description: 'Zapatillas', price: 800, total_in_shelf: 30, total_in_vault: 200, store_id: tate.id)
Article.create(name: 'Adidas', description: 'Zapatillas', price: 700, total_in_shelf: 200.50, total_in_vault: 100.50, store_id: tate.id)

Article.create(name: 'Puma', description: 'Zapatillas', price: 900, total_in_shelf: 25, total_in_vault: 100, store_id: rossetti.id)
Article.create(name: 'Nike', description: 'Zapatillas', price: 800, total_in_shelf: 30, total_in_vault: 200, store_id: rossetti.id)
