#encoding: utf-8
class UserDocument

  include Mongoid::Document

  include Mongoid::Timestamps

  has_many :article_scores

  belongs_to :user, class_name: "User"

  index({user_id: 1}, {unique: true, background: true})

end
