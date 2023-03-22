class Fullset < ActiveRecord::Base
    belongs_to :artist
    belongs_to :event
    belongs_to :genre
end