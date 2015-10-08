class MessageRoom < ActiveRecord::Base
  belongs_to :student
  belongs_to :worker
  has_many :messages
end
