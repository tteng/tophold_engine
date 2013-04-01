class ArticleRecord
  
  include Mongoid::Document

  include Mongoid::Timestamps

  belongs_to :user_document

  belongs_to :article

  field :score, type: Integer

  index({user_document_id: 1, article_id: 1}, {unique: true, background: true})

end
