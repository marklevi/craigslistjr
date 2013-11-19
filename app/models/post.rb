class Post < ActiveRecord::Base
  belongs_to :category
  attr_accessible :title, :description, :price, :reply_email, :category_id

end
