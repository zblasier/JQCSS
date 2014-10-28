class Category < ActiveRecord::Base
  has_many :sales_items
end
