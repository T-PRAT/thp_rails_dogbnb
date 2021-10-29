class Dog < ApplicationRecord
	has_many :strolls
	has_many :dog_sitters, through: :strolls
end
