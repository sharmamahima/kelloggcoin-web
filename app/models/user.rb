class User < ApplicationRecord
  has_many :sent_transactions, class_name: 'Transaction', foreign_key: 'from_user_id', dependent: :destroy
  
  has_many :received_transactions, class_name: 'Transaction', foreign_key: 'to_user_id', dependent: :destroy
end
