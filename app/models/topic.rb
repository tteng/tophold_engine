#encoding: utf-8
class Topic

  include Mongoid::Document

  include Mongoid::Timestamps

  field :title, type: String

  field :content, type: String

  embeds_many :tags, as: :taggable

  has_many :sub_topics

end
