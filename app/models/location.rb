class Location < ActiveRecord::Base
    has_many :events
    has_many :fullsets, through: :events
end