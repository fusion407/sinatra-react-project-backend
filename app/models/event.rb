class Event < ActiveRecord::Base
    has_many :fullsets
    has_many :artists, through: :fullsets
    has_many :genres, through: :artists
end