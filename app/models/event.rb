class Event < ActiveRecord::Base
    belongs_to :location
    has_many :artists
    has_many :fullsets, through: :artists
end