require 'xmlrpc/server'

module Roap
  module RpcExtension
    extend Roap::AttributeBase
    
    @@server = XMLRPC::Server.new

    #static
    on /rpc()/ do |klass, method, md|
      @@server.add_handler("#{klass}::#{method.name}") do |*args|
        klass.singleton_method(method.name).call *args
      end
    end

    #runtime
    on /from-rpc (?<server>.*)/ do |_super, md, *args|
      server = instance_eval md[:server]

      server.call("#{_super.owner}::#{_super.name}", *args)
    end

    def self.serve
      @@server.serve
    end
  end
end
