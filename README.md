roap_rpc
====

[documentation](doc/)

http://ruby-doc.org/stdlib-2.2.2/libdoc/xmlrpc/rdoc/XMLRPC/Client.html<br>
http://ruby-doc.org/stdlib-2.0.0/libdoc/xmlrpc/rdoc/XMLRPC/Server.html<br>

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
