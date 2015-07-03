from-rpc server
====

__server__

```rb
class Foo
  def initialize
    @server = XMLRPC::Client.new("localhost", "/RPC2", 8080)
  end
  
  #from-rpc @server
  def sum a,b
  end
end
```
```rb
f = Foo.new
puts f.sum 10,20
```
