roap_rpc
====

[documentation](doc/)

Installation
----
```
gem install roap_rpc
```

Outer Links
----
* [Ruby stdlib XMLRPC - Client side](http://ruby-doc.org/stdlib-2.2.2/libdoc/xmlrpc/rdoc/XMLRPC/Client.html)
* [Ruby stdlib XMLRPC - Server side](http://ruby-doc.org/stdlib-2.0.0/libdoc/xmlrpc/rdoc/XMLRPC/Server.html)

Extension Attributes
----
* rpc
* from_rpc server

Usage
----
```rb
class Foo
  
  #rpc
  def self.rpc_sum a,b
    a + b
  end
  
  include Roap::RpcExtension
end

Roap::RpcExtension::serve
```
```rb
class Foo
  
  def initialize
    @server = rpc_server_session
  end
  
  #from-rpc @server
  def rpc_sum a,b
  end
end

f = Foo.new
puts f.rpc_sum(10,20)
```
