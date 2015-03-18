# Bagel.delete_all
# IngredientsInProduct.delete_all
# Product.delete_all
# Ingredient.delete_all
# OrderItem.delete_all
# Order.delete_all
# OrderStatus.delete_all
# User.delete_all

user_1 = User.create!(first_name: 'DB', last_name: 'Cooper', email: 'db@cooper.com', password_digest: 'password123', phone_number: '111-111-1111', address_1: '1 Main St', address_2: 'Apt 1', address_zipcode: '11111')
user_2 = User.create!(first_name: 'Homer', last_name: 'Simpson', email: 'homer@simpson.com', password_digest: 'password123', phone_number: '222-222-2222', address_1: '2 Springfield St', address_2: 'Floor 2', address_zipcode: '22222')
user_3 = User.create!(first_name: 'Linus', last_name: 'Torvalds', email: 'linus@linux.com', password_digest: 'password123', phone_number: '333-333-3333', address_1: '3 Oak St', address_2: 'Suite 3', address_zipcode: '33333')
user_4 = User.create!(first_name: 'Ralph', last_name: 'Steadman', email: 'ralph@gonzo.com', password_digest: 'password123', phone_number: '444-444-4444', address_1: '4 Vegas Lane', address_2: 'basement', address_zipcode: '44444')
user_5 = User.create!(first_name: 'bob', last_name: 'bob', email: 'bob@bob.bob', password_digest: 'bob', customer_id: "cus_5tIF2YEwF2eQIB")

order_status_1 = OrderStatus.create!(status: 'purchased')
order_status_2 = OrderStatus.create!(status: 'built')
order_status_3 = OrderStatus.create!(status: 'completed')



plain = Bagel.create!(bagel_type: 'plain', price: 0.0)
onion = Bagel.create!(bagel_type: 'onion', price: 0.5)
sesame = Bagel.create!(bagel_type: 'sesame seed', price: 0.5)
whole_wheat = Bagel.create!(bagel_type: 'whole wheat', price: 0.5)
poppy_seed = Bagel.create!(bagel_type: 'poppyseed', price: 0.5)
raisin = Bagel.create!(bagel_type: 'cinnamon raison', price: 0.5)
variety = Bagel.create!(bagel_type: "all the bagels", price: 3.0)


prod_1 = plain.products.create!(name: 'Small Bagel Box', description: 'plain bagels', price: 12.00, product_type: 'c')
prod_2 = plain.products.create!(name: 'Large bagel box (18 plain)', description: 'plain bagels', price: 18.00, product_type: 'c')
prod_3 = Product.create!(name: 'Cream Cheese (catering size)', description: 'plain', price: 4.00, product_type: 'c')
prod_4 = Product.create!(name: 'Cream Cheese (catering size)', description: 'chive', price: 4.50, product_type: 'c')
prod_5 = Product.create!(name: 'Cream Cheese (catering size)', description: 'tofutti (vegetarian)', price: 4.50, product_type: 'c')
prod_6 = Product.create!(name: 'Cream Cheese (catering size)', description: 'salmon spread', price: 5.50, product_type: 'c')
prod_7 = plain.products.create!(name: 'Party Box', description: '25 bagels plus plain and chive cream cheese', price: 50.00, product_type: 'c')
prod_8 = whole_wheat.products.create!(name: 'The Somerville', description: 'whole wheat bagel with avocado, tomato, cucumber, sprouts, tofutti cream cheese', price: 6.75, product_type: 'a')
prod_9 = onion.products.create!(name: 'The North End', description: 'onion bagel with roast beef, tomato, red onions, asiago cheese, provolone cheese', price: 6.50, product_type: 'a')
prod_10 = sesame.products.create!(name: 'The South End', description: 'sesame bagel with corn beef, cole slaw, swiss cheese, spicy mustard', price: 6.50, product_type: 'a')
prod_11 = plain.products.create!(name: 'The Hub', description: 'plain bagel with turkey, garlic mayonaisse, tomato, cucumber, sprouts', price: 6.00, product_type: 'a')
prod_12 = poppy_seed.products.create!(name: 'The Brookline', description: 'poppyseed bagel with cream cheese, tomato, red onions, smoked salmon', price: 7.50, product_type: 'a')
prod_13 = Product.create!(name: 'Small Coke', description: 'Coke', price: 2.75, product_type: 'd')
prod_14 = Product.create!(name: 'Small Diet Coke', description: 'Diet Coke', price: 2.75, product_type: 'd')
prod_15 = Product.create!(name: 'Small Sprite', description: 'Sprite', price: 2.75, product_type: 'd')
prod_16 = Product.create!(name: 'Large Coke', description: 'Coke', price: 3.50, product_type: 'd')
prod_17 = Product.create!(name: 'Large Diet Coke', description: 'Diet Coke', price: 3.50, product_type: 'd')
prod_18 = Product.create!(name: 'Large Sprite', description: 'Sprite', price: 3.50, product_type: 'd')
prod_19 = Product.create!(name: 'Hot Coffee small', description: 'best hot coffee in town', price: 2.00, product_type: 'd')
prod_20 = Product.create!(name: 'Hot Coffee large', description: 'best hot coffee in town', price: 2.50, product_type: 'd')
prod_21 = Product.create!(name: 'Latte small', description: 'voted best latte 2014', price: 3.50, product_type: 'd')
prod_22 = Product.create!(name: 'Latte large', description: 'voted best latte 2014', price: 4.25, product_type: 'd')

prod_23 = plain.products.create!(name: 'Build Your Own Bagel!', description: 'customize it yourself', price: 2.50, product_type: 'b')

ingr_1 = Ingredient.create!(name: 'tomato', price: 0.00)
ingr_2 = Ingredient.create!(name: 'cucumber', price: 0.00)
ingr_3 = Ingredient.create!(name: 'red onions', price: 0.00)
ingr_4 = Ingredient.create!(name: 'cole slaw', price: 0.00)
ingr_5 = Ingredient.create!(name: 'mayo', price: 0.50)
ingr_6 = Ingredient.create!(name: 'garlic mayo', price: 0.50)
ingr_7 = Ingredient.create!(name: 'mustard', price: 0.50)
ingr_8 = Ingredient.create!(name: 'spicy mustard', price: 0.50)
ingr_9 = Ingredient.create!(name: 'plain cream cheese', price: 1.50)
ingr_10 = Ingredient.create!(name: 'chive cream cheese', price: 1.50)
ingr_11 = Ingredient.create!(name: 'tofutti', price: 2.00)
ingr_12 = Ingredient.create!(name: 'salmon spread', price: 2.50)
ingr_13 = Ingredient.create!(name: 'asiago', price: 0.50)
ingr_14 = Ingredient.create!(name: 'provolone', price: 0.50)
ingr_15 = Ingredient.create!(name: 'swiss', price: 0.50)
ingr_16 = Ingredient.create!(name: 'cheddar cheese', price: 0.50)
ingr_17 = Ingredient.create!(name: 'avocado', price: 2.00)
ingr_18 = Ingredient.create!(name: 'sprouts', price: 0.50)
ingr_19 = Ingredient.create!(name: 'turkey', price: 2.00)
ingr_20 = Ingredient.create!(name: 'smoked salmon', price: 3.50)
ingr_21 = Ingredient.create!(name: 'roast beef', price: 2.00)
ingr_22 = Ingredient.create!(name: 'corn beef', price: 3.00)


ingr_in_prod_243 = IngredientsInProduct.create!(product_id: 8, ingredient_id: 1)
ingr_in_prod_244 = IngredientsInProduct.create!(product_id: 8, ingredient_id: 2)
ingr_in_prod_253 = IngredientsInProduct.create!(product_id: 8, ingredient_id: 11)
ingr_in_prod_259 = IngredientsInProduct.create!(product_id: 8, ingredient_id: 17)
ingr_in_prod_260 = IngredientsInProduct.create!(product_id: 8, ingredient_id: 18)

ingr_in_prod_265 = IngredientsInProduct.create!(product_id: 9, ingredient_id: 1)
ingr_in_prod_265 = IngredientsInProduct.create!(product_id: 9, ingredient_id: 3)
ingr_in_prod_265 = IngredientsInProduct.create!(product_id: 9, ingredient_id: 13)
ingr_in_prod_265 = IngredientsInProduct.create!(product_id: 9, ingredient_id: 21)
ingr_in_prod_265 = IngredientsInProduct.create!(product_id: 9, ingredient_id: 14)


ingr_in_prod_287 = IngredientsInProduct.create!(product_id: 10, ingredient_id: 4)
ingr_in_prod_287 = IngredientsInProduct.create!(product_id: 10, ingredient_id: 22)
ingr_in_prod_287 = IngredientsInProduct.create!(product_id: 10, ingredient_id: 15)
ingr_in_prod_287 = IngredientsInProduct.create!(product_id: 10, ingredient_id: 8)



ingr_in_prod_309 = IngredientsInProduct.create!(product_id: 11, ingredient_id: 19)
ingr_in_prod_309 = IngredientsInProduct.create!(product_id: 11, ingredient_id: 6)
ingr_in_prod_309 = IngredientsInProduct.create!(product_id: 11, ingredient_id: 1)
ingr_in_prod_309 = IngredientsInProduct.create!(product_id: 11, ingredient_id: 2)
ingr_in_prod_309 = IngredientsInProduct.create!(product_id: 11, ingredient_id: 18)


ingr_in_prod_331 = IngredientsInProduct.create!(product_id: 12, ingredient_id: 9)
ingr_in_prod_331 = IngredientsInProduct.create!(product_id: 12, ingredient_id: 1)
ingr_in_prod_331 = IngredientsInProduct.create!(product_id: 12, ingredient_id: 3)
ingr_in_prod_331 = IngredientsInProduct.create!(product_id: 12, ingredient_id: 20)


# order_1 = Order.create!(taxes: 0.50, delivery_cost: 6.00, subtotal: 6.75, total: 13.25, order_status_id: 1, user_id: 1, discount: 0.00, delivery_type: 'd', delivery_phone: '617-666-6666', delivery_address_1: 'New Address 1', delivery_address_2: 'New Address 2', delivery_address_zipcode: '99999')
# order_item_1_1 = OrderItem.create!(quantity: 1, product_id: 8, order_id: 1, total_price: 6.75, bagel_id: 4)
# order_item_1_2 = OrderItem.create!(quantity: 1, product_id: 9, order_id: 1, total_price: 6.50, bagel_id: 2)

# order_2 = Order.create!(taxes: 0.50, delivery_cost: 6.00, subtotal: 6.50, total: 13.00, order_status_id: 1, user_id: 2, discount: 0.00, delivery_type: 'd', delivery_phone: '617-666-6666', delivery_address_1: 'New Address 1', delivery_address_2: 'New Address 2', delivery_address_zipcode: '99999')
# order_item_2_1 = OrderItem.create!(quantity: 1, product_id: 10, order_id: 2, total_price: 6.50, bagel_id: 3)


