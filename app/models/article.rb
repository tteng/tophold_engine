#encoding: utf-8
class Article

  include Mongoid::Document

  field :title, type: String

  field :content, type: String 

  attr_protected: _id

  embeds_many :tags, as: taggable

  embeds_many :comments, as: commentable

  has_many :article_scores, dependent: delete

end
