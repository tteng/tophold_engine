#encoding: utf-8

#Mongoid.add_language("zh-CN")

module Mongoid

  class Criteria 

    def in_batches size=nil
      limit = size || 500
      skip = 0
      objects = self.limit(limit).skip(skip * limit)
      while objects.any?
        yield objects
        break if objects.size < limit
        skip+=1
        objects = self.limit(limit).skip(skip*limit)
      end
    end

  end

end

if defined?(PhusionPassenger)
 PhusionPassenger.on_event(:starting_worker_process) do |forked|
   Mongoid.master.connection.connect if forked
 end
end
