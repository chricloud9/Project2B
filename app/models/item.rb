class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :orderline
end
