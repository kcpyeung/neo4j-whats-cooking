class Dish
  include Neo4j::NodeMixin
  extend AllMixin
  property :name, :index => :exact
  has_n(:ingredients).relationship(Measurement)

  def add_ingredients(materials)
    materials.each do |material|
      Measurement.create(:ingredients, self, material[:ingredient], :grams => material[:weight])
      material[:ingredient].needed_by self, material[:weight]
    end
  end

  def can_be_cooked_with?(materials)
    enough = self.ingredients_rels.map {|amount_needed| amount_needed.satisfied_by?(materials)}
    enough.reduce(true) {|acc, ok| acc && ok}
  end
end