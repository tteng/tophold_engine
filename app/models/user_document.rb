#encoding: utf-8
class UserDocument

  include Mongoid::Document

  has_many :article_scores

  belongs_to :user

  index({user_id: 1}, {unique: true, background: true})

end
