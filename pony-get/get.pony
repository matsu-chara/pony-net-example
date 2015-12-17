use "collections"
use "net/http"

actor Main
  new create(env: Env) =>
    try
      let url = URL.build("http://matsu-chara.hatenablog.com/")
      let request = Payload.request(where
        url' = url,
        handler' = EchoHandler(env)
      )
      let client = Client()
      client(consume request)
    else
      env.out.print("url is wrong")
    end


class EchoHandler is ResponseHandler
  let _env: Env

  new iso create(env': Env) =>
    _env = env'

  fun val apply(request: Payload val, response: Payload val): Any =>
    _env.out.print("request is")
    for body in request.body().values() do
      _env.out.print(body)
    end
    _env.out.print("response is")
    for body in response.body().values() do
      _env.out.print(body)
    end
