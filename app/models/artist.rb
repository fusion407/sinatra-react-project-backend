class Artist < ActiveRecord::Base
    belongs_to :genre
    has_many :events
    has_many :fullsets, through: :events
end