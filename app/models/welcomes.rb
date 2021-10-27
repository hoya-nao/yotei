class Welcomes < ApplicationRecord
    validates :hajime, presence: true
    validates :owari, presence: true
end