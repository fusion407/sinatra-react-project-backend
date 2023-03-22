class Genre < ActiveRecord::Base
    has_many :fullsets
    has_many :artists
    has_many :events, through: :fullsets
end