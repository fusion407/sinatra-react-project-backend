class Event < ActiveRecord::Base
    belongs_to :location
    has_many :fullsets
    has_many :artists, through: :fullsets
    has_many :genres, through: :artists
end