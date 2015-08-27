class User
	attr_accessor :name, :email
	def initialize(attributes = Hash.new("cmon"))
		@name = attributes[:name]
		@email = attributes[:email]
	end
	def formatted_email
		"#{@name} <#{@email}>"
	end
end	