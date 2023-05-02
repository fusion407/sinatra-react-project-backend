class Artist < ActiveRecord::Base
    has_many :fullsets
    has_many :events, through: :fullsets
    has_many :locations, through: :fullsets
end