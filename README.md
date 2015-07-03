roap_rpc
====

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
