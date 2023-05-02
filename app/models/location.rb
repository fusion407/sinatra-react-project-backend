class Location < ActiveRecord::Base
    has_many :fullsets
    has_many :events, through: :fullsets
    has_many :artists, through: :fullsets
end