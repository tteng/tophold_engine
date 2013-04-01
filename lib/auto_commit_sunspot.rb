class AutoCommitSunspot < Mongoid::Observer

  def after_save(doc)
    Sunspot.index! doc
  end

end
