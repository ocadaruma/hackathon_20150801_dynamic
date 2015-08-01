class Song < ActiveRecord::Base
  has_many :tags
end
