require './item'
class PointOfSale

	def initialize
		@pricing = {}
	end

	def setPricing(itemName, unitPrice, volumeAmount=0, volumePrice=0)
		@pricing[itemName] = Item.new(itemName, unitPrice, volumeAmount, volumePrice)
	end

	def scan(items)
		count = {}
		total = 0 
		items.chars.each{|i| 
			if count.include?(i)
				count[i] = count[i]+1
			else
				count[i] = 1
			end}
		@pricing.each{|itemName, item| 
			if count.include?(itemName)
				if item.volumeAmount > 0 && count[itemName] >= item.volumeAmount
					volumeCount = count[itemName]/item.volumeAmount
					leftoverCount = count[itemName] - volumeCount*item.volumeAmount
					total += (volumeCount * item.volumePrice) + (leftoverCount * item.unitPrice)
				else
					total += count[itemName] * item.unitPrice
				end
			end}
		total
	end
end