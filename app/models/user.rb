#encoding: utf-8
class User < ActiveRecord::Base

  has_one :user_document, :class_name => "UserDocument"

end
