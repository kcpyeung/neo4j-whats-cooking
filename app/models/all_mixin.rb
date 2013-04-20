module AllMixin
  def all
    Neo4j.all_nodes.to_a.keep_if {|node| node.kind_of? self}
  end
end