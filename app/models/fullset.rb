class Fullset < ActiveRecord::Base
    has_many :artists
    has_many :events
end