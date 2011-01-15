# WebSocket echo server

require 'rubygems'
require 'cool.io-websocket'

class EchoConnection < Cool.io::WebSocket
	def on_open
		puts "WebSocket opened from '#{peeraddr[2]}': request=#{request.inspect}"
		send_message("server: Hello, world!")
	end

	def on_message(data)
		puts "WebSocket data received: '#{data}'"
		send_message(data)
	end

	def on_close
		puts "WebSocket closed"
	end
end

host = '0.0.0.0'
port = ARGV[0] || 8081

server = Cool.io::WebSocketServer.new(host, port, EchoConnection)
server.attach(Cool.io::Loop.default)

puts "start on #{host}:#{port}"

Cool.io::Loop.default.run

