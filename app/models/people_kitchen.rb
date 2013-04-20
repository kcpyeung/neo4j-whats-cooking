class Kevin
  def self.kitchen
    salt = Ingredient.find(:name => "Salt").first
    olive_oil = Ingredient.find(:name => "Olive oil").first
    tomato = Ingredient.find(:name => "Tomato").first
    onion = Ingredient.find(:name => "Onion").first
    bacon = Ingredient.find(:name => "Bacon").first
    lecttuce = Ingredient.find(:name => "Lecttuce").first
    minced_beef = Ingredient.find(:name => "Minced beef").first
    pepper = Ingredient.find(:name => "Black pepper").first
    garlic = Ingredient.find(:name => "Garlic").first
    bay_leaf = Ingredient.find(:name => "Bay leaf").first
    bouquet_garni = Ingredient.find(:name => "Bouquet garni").first
    egg_white = Ingredient.find(:name => "Egg white").first
    sugar = Ingredient.find(:name => "Sugar").first
    bun = Ingredient.find(:name => "Bun").first

    Kitchen.new [{:ingredient => minced_beef, :weight => 2000}, {:ingredient => pepper, :weight => 200},
                 {:ingredient => onion, :weight => 2000}, {:ingredient => garlic, :weight => 500},
                 {:ingredient => salt, :weight => 250}, {:ingredient => sugar, :weight => 1000},
                 {:ingredient => olive_oil, :weight => 2000}, {:ingredient => tomato, :weight => 2000},
                 {:ingredient => bouquet_garni, :weight => 100}, {:ingredient => bay_leaf, :weight => 50},
                 {:ingredient => bun, :weight => 5}, {:ingredient => lecttuce, :weight => 250},
                 {:ingredient => bacon, :weight => 150},
                 {:ingredient => egg_white, :weight => 2000}]
  end
end

class Andrew
  def self.kitchen
    salt = Ingredient.find(:name => "Salt").first
    fish_fillet = Ingredient.find(:name => "Fish fillet").first
    egg_white = Ingredient.find(:name => "Egg white").first
    sugar = Ingredient.find(:name => "Sugar").first
    lemon = Ingredient.find(:name => "Lemon").first
    almond = Ingredient.find(:name => "Almond").first

    Kitchen.new [{:ingredient => sugar, :weight => 5000}, {:ingredient => egg_white, :weight => 2000},
                 {:ingredient => almond, :weight => 1000}, {:ingredient => lemon, :weight => 200},
                 {:ingredient => fish_fillet, :weight => 300}, {:ingredient => salt, :weight => 100}]
  end
end