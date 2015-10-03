class Message < ActiveRecord::Base

  #アソシエーション
  belongs_to :messagable, polymorphic: true

end
