#encoding: utf-8
class Tag

  include Mongoid::Document

  field :title, type: String

  recursively_embeds_many index: true, background: true

  embedded_in :article, ploymorphic: true

  embedded_in :topic,   ploymorphic: true

  embedded_in :sub_topic, ploymorphic: true

end
