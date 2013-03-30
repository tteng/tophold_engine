#encoding: utf-8
class User < ActiveRecord::Base

  has_one :user_document, :class_name => "UserDocument"

  has_many :sub_topics, foreign_key: :creator_id

end
