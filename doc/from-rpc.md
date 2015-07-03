from-rpc server
====

__server__<br>
호출할 프로시저가 위치한 RPC 서버입니다.<br>
이 값은 표현식이며, 메소드가 불릴 때 마다 실행됩니다.

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
