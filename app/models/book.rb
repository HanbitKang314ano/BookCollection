class Book < ApplicationRecord
<<<<<<< HEAD
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :published_date, presence: true
=======
	has_many :user
	validates :title, :author, :price, :published_date, presence: true
>>>>>>> run_test
end
