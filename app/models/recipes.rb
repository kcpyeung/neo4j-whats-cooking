class Recipes
  def self.create
    Neo4j::Transaction.run { Dish.all.each {|x| x.del} }
    Neo4j::Transaction.run { Ingredient.all.each {|x| x.del} }
    Neo4j::Transaction.run do
      salt = Ingredient.create :name => "Salt"
      olive_oil = Ingredient.create :name => "Olive oil"
      tomato = Ingredient.create :name => "Tomato"
      onion = Ingredient.create :name => "Onion"
      bacon = Ingredient.create :name => "Bacon"
      lecttuce = Ingredient.create :name => "Lecttuce"
      minced_beef = Ingredient.create :name => "Minced beef"
      beef_tenderloin = Ingredient.create :name => "Beef tenderloin"
      pepper = Ingredient.create :name => "Black pepper"
      garlic = Ingredient.create :name => "Garlic"
      bay_leaf = Ingredient.create :name => "Bay leaf"
      bouquet_garni = Ingredient.create :name => "Bouquet garni"
      fish_fillet = Ingredient.create :name => "Fish fillet"
      egg_yolk = Ingredient.create :name => "Egg yolk"
      egg_white = Ingredient.create :name => "Egg white"
      sugar = Ingredient.create :name => "Sugar"
      bun = Ingredient.create :name => "Bun"
      lemon = Ingredient.create :name => "Lemon"
      almond = Ingredient.create :name => "Almond"

      bolognese_sauce = Dish.create :name => "Bolognese sauce"
      beef_burger = Dish.create :name => "Beef burger"
      fish_burger = Dish.create :name => "Fish burger"
      meat_ball = Dish.create :name => "Meat ball"
      beef_steak = Dish.create :name => "Beef steak"
      aioli = Dish.create :name => "Aioli"
      macaroon = Dish.create :name => "Macaroon"

      bolognese_sauce.add_ingredients([{:ingredient => tomato, :weight => 1000}, {:ingredient => pepper, :weight => 10},
                                       {:ingredient => minced_beef, :weight => 1000}, {:ingredient => salt, :weight => 10},
                                       {:ingredient => bouquet_garni, :weight => 30}, {:ingredient => olive_oil, :weight => 20},
                                       {:ingredient => garlic, :weight => 15}, {:ingredient => onion, :weight => 100},
                                       {:ingredient => bay_leaf, :weight => 5}])
      fish_burger.add_ingredients([{:ingredient => pepper, :weight => 3}, {:ingredient => bun, :weight => 50},
                                   {:ingredient => fish_fillet, :weight => 150}, {:ingredient => salt, :weight => 1},
                                   {:ingredient => olive_oil, :weight => 10}, {:ingredient => garlic, :weight => 3},
                                   {:ingredient => onion, :weight => 10}, {:ingredient => lecttuce, :weight => 10}])
      beef_burger.add_ingredients([{:ingredient => tomato, :weight => 20}, {:ingredient => pepper, :weight => 3},
                                   {:ingredient => minced_beef, :weight => 150}, {:ingredient => salt, :weight => 1},
                                   {:ingredient => olive_oil, :weight => 10}, {:ingredient => garlic, :weight => 3},
                                   {:ingredient => onion, :weight => 10}, {:ingredient => lecttuce, :weight => 10},
                                   {:ingredient => bacon, :weight => 30}, {:ingredient => bun, :weight => 50}])
      meat_ball.add_ingredients([{:ingredient => pepper, :weight => 5}, {:ingredient => onion, :weight => 50},
                                 {:ingredient => minced_beef, :weight => 450}, {:ingredient => salt, :weight => 5},
                                 {:ingredient => olive_oil, :weight => 10}, {:ingredient => garlic, :weight => 10}])
      beef_steak.add_ingredients([{:ingredient => pepper, :weight => 5}, {:ingredient => onion, :weight => 50},
                                  {:ingredient => beef_tenderloin, :weight => 250}, {:ingredient => salt, :weight => 3},
                                  {:ingredient => olive_oil, :weight => 10}, {:ingredient => garlic, :weight => 5}])
      aioli.add_ingredients([{:ingredient => pepper, :weight => 10}, {:ingredient => salt, :weight => 5},
                             {:ingredient => olive_oil, :weight => 500}, {:ingredient => garlic, :weight => 10},
                             {:ingredient => egg_yolk, :weight => 10}, {:ingredient => lemon, :weight => 50}])
      macaroon.add_ingredients([{:ingredient => salt, :weight => 2}, {:ingredient => almond, :weight => 120},
                                {:ingredient => egg_white, :weight => 140}, {:ingredient => sugar, :weight => 70}])
    end
  end
end