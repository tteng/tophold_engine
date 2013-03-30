class SubTopic

  include Mongoid::Document

  field :title, type: String

  field :content, type: String

  belongs_to :creator, class_name: "User", foreign_key: :creator_id

  belongs_to :topic

end
