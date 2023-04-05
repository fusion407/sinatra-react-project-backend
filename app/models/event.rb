class Event < ActiveRecord::Base
    belongs_to :location
    has_many :fullsets
end