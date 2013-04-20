class Measurement
  include Neo4j::RelationshipMixin
  property :grams

  def satisfied_by?(ingredient_list)
    okays = ingredient_list.map {|ingredient| ingredient[:ingredient] == self.ingredient && self.grams <= ingredient[:weight]}
    okays.reduce(false) {|acc, ok| acc || ok}
  end

  protected

  def ingredient
    end_node
  end
end