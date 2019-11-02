class Item
attr_accessor :itemName, :unitPrice, :volumeAmount, :volumePrice

	def initialize(itemName, unitPrice, volumeAmount, volumePrice)
		@itemName = itemName
		@unitPrice = unitPrice
		@volumeAmount = volumeAmount
		@volumePrice = volumePrice
	end


end