IngredientsInProduct.delete_all
Product.delete_all
Ingredient.delete_all

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
prod_13 = Product.create!(name: 'Fountain Soda small', description: 'Coke', price: 2.75, product_type: 'd')
prod_14 = Product.create!(name: 'Fountain Soda small', description: 'Diet Coke', price: 2.75, product_type: 'd')
prod_15 = Product.create!(name: 'Fountain Soda small', description: 'Sprite', price: 2.75, product_type: 'd')
prod_16 = Product.create!(name: 'Fountain Soda large', description: 'Coke', price: 3.50, product_type: 'd')
prod_17 = Product.create!(name: 'Fountain Soda large', description: 'Diet Coke', price: 3.50, product_type: 'd')
prod_18 = Product.create!(name: 'Fountain Soda large', description: 'Sprite', price: 3.50, product_type: 'd')
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


