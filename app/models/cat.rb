class Cat < ApplicationRecord
    validates :name, :age, presence: true
<<<<<<< HEAD
    validates :name, length: {minimum: 2, maximum: 10 }
    validates :enjoys, length: { minimum: 10 }
    validates :age, format: { with: /\A\d+\z/, message: "Please Enter a Number" }
=======
    validates :age, format: { with: /\A\d+\z/, message: "Enter a number." }
    validates :name, length: { minimum:2,  maximum: 10  }
    validates :enjoys, length: { minimum: 5 }
>>>>>>> 6d89f9b6bbe32ac333c428d60105e997fff85b6c
end
