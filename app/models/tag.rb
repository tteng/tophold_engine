#encoding: utf-8
class Tag

  include Mongoid::Document

  include Mongoid::Timestamps

  field :title, type: String

  recursively_embeds_many 

  embedded_in :article, polymorphic: true

  embedded_in :topic,   polymorphic: true

  embedded_in :sub_topic, polymorphic: true

end
