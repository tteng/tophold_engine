#encoding: utf-8
require 'configatron'

@@TOPHOLD_GLOBAL_CONFIG = {

  redis: {
    development: {
      host:  "localhost",
      port: "6379",
    },
    production: { 
      host:  "uranus",
      port: "6379",
    },
  },

}

configatron.configure_from_hash @@TOPHOLD_GLOBAL_CONFIG
