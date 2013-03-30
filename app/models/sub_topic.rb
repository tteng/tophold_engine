class SubTopic

  include Mongoid::Document

  field :title, type: String

  field :content, type: String

  field :creator_id, type: Integer

  belongs_to :topic

  def creator
    return nil if self.creator_id.blank?
    User.find self.creator_id
  end

  def creator= u
    return unless u.is_a?(User)
    self.creator_id = u.id
  end

end
