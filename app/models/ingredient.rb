class Ingredient
  include Neo4j::NodeMixin
  extend AllMixin
  property :name, :index => :exact
  has_n(:dishes).relationship(Measurement)

  def needed_by(dish, grams)
    Measurement.create(:dishes, self, dish, :grams => grams)
  end
end