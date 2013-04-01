#encoding: utf-8
class Article

  include Mongoid::Document

  include Mongoid::Timestamps

  field :title, type: String

  field :content, type: String 

  embeds_many :tags, as: :taggable

  embeds_many :comments, as: :commentable

  has_many :article_scores, dependent: :delete

end
