class Artist < ActiveRecord::Base
    belongs_to :genre
    has_many :fullsets
    has_many :events, through: :fullsets
end