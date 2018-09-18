class Tag < ApplicationRecord
 has_many :taggings
 has_many :articles, through: :taggings

 def id_ar
  self.tags.collect do |id|
    tag.id
  end
 end
end
