class Artist < ApplicationRecord
    has_many :plays
    has_many :instruments, through: :plays
end
