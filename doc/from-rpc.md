from-rpc server
====

메소드의 구현이 원격 서버에 있음을 나타내는 속성입니다.

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
