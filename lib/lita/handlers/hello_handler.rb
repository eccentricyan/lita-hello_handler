module Lita
  module Handlers
    class HelloHandler < Handler
      # insert handler code here
      route /^echo\s+(.+)/, :echo, help: {"echo TEXT" => "Replies back with TEXT."}
      def echo(response)
      	response.reply(response.matches[0][0])
      end
      Lita.register_handler(self)
    end
  end
end
