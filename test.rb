require './pointofsale'

POS = PointOfSale.new

POS.setPricing("A", 2.00, 4, 7.00)
POS.setPricing("B", 12.00)
POS.setPricing("C", 1.25, 6, 6.00)
POS.setPricing("D", 0.15)

puts POS.scan("ABCDABAA")
puts POS.scan("CCCCCCC")
puts POS.scan("ABCD")
puts POS.scan("")
puts POS.scan("ABDCDE")