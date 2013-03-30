#encoding: utf-8
class User < ActiveRecord::Base

  has_one :user_document

end
