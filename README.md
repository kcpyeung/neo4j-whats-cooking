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

Licence
=======
<a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">neo4j-whats-cooking</span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Kevin Yeung</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_US">Creative Commons Attribution 3.0 Unported License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/kcpyeung/neo4j-whats-cooking" rel="dct:source">https://github.com/kcpyeung/neo4j-whats-cooking</a>.