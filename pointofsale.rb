class PointOfSale
require 'item'

pricing = {}

	def setPricing(itemName, unitPrice, volumeAmount=0, volumePrice=0)
		pricing[itemName] = Item.new(itemName, unitPrice, volumeAmount, volumePrice)
	end




end