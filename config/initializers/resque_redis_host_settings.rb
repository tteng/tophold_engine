#encoding: utf-8
require 'resque'

Resque.redis = configatron.redis.send(Rails.env).host + ':' + configatron.redis.send(Rails.env).port

Resque.redis.namespace = "resque:tophold"
