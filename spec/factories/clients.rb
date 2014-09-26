FactoryGirl.define do
	factory :client do
		name "Johnny's Autos"
		address_1 "1 New Road" 
		city "London" 
		postcode "SW6 1AB"
		email "info@johnnysautos.com"

		factory :invalid_client do
			email "xxx"
		end
	end
end