class Conversation < ActiveRecord::Base
  belongs to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs to :recipient, :foreign_key => :sender_id, class_name: 'User'

  has_many :messages, dependent: :destroy
end
