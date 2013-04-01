#encoding: utf-8
#author: tteng
#override Sunspot::Mongoid::DataAccessor::BSON 
#to fix uninitialized constant Sunspot::Mongoid::DataAccessor::BSON bug
#target version: sunspot_mongoid/0.4.1

module Sunspot

  module Mongoid

    class DataAccessor < Sunspot::Adapters::DataAccessor

      def load(id)
        @clazz.criteria.for_ids(Moped::BSON::ObjectId(id))
      end

      def load_all(ids)
        @clazz.criteria.in(:_id => ids.map {|id| Moped::BSON::ObjectId(id)})
      end

    end

  end

end
