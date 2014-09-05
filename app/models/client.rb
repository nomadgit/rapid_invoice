class Client < ActiveRecord::Base

	validates :name, :address, presence: true
	validates :email, presence: true , format: {
		with: %r{\A[\w|.|-]+@[\w|-]+\.[\w]+\z},
		message: 'Email must be in the format xxx@yyy.zzz'
	}
end
