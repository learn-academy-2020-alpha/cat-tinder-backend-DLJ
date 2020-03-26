class Cat < ApplicationRecord
    validates :name, :age, presence: true
    validates :age, format: { with: /\A\d+\z/, message: "Enter a number." }
    validates :name, length: { minimum:2,  maximum: 10  }
    validates :enjoys, length: { minimum: 5 }
end
