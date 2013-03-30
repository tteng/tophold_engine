#encoding: utf-8
class Comment

  include Mongoid::Document

  embedded_in :article,   polymorphic: true

  embedded_in :sub_topic, polymorphic: true

  embeds_many :replies, class_name: "Comment", inverseof: :parent

  embedded_in :parent,  class_name: "Comment", inverse_of: :replies

end

