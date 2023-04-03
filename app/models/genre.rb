class Genre < ActiveRecord::Base
    has_many :artists
    has_many :events, through: :artists
    has_many :fullsets, through: :artists
end