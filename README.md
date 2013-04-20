neo4j-whats-cooking
===================

Code sample to show how to find out what can be cooked in a kitchen using neo4j.rb

Example
=======

In irb:
```ruby
require 'wc'

kevins_kitchen = Kevin.kitchen
kevins_kitchen.whats_cooking
kevins_kitchen.stock_up Ingredient.find(:name => "Almond").first, 1000
kevins_kitchen.whats_cooking

andrews_kitchen = Andrew.kitchen
andrews_kitchen.whats_cooking
```