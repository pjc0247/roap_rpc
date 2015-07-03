rpc
====

원격 서버일 때 메소드를 원격 실행이 가능하도록 설정합니다.<br>
메소드는 반드시 클래스 메소드이어야 합니다.

```rb
class Foo
  
  #rpc
  def self.sum a,b
    return a+b
  end
end

Roap::RpcExtension::serve
```
