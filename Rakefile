require 'rake'

begin
	require 'jeweler'
	Jeweler::Tasks.new do |gemspec|
		gemspec.name = "cool.io-websocket"
		gemspec.summary = "WebSocket server based on Coolio"
		gemspec.description = "Cool.io-WebSocket is a WebSocket server implementation based on Cool.io, a high performance event-driven I/O library for Ruby. This library conforms to WebSocket draft-75 and draft-76."
		gemspec.email = "frsyuki@users.sourceforge.jp"
		gemspec.homepage = "http://github.com/maxjustus/cool.io-websocket"
		gemspec.authors = ["FURUHASHI Sadayuki", "Max Justus Spransy"]
		gemspec.files.include "lib/**/*"
		gemspec.files.include "examples/**/*"
		gemspec.files.exclude ".gitignore"
		gemspec.add_dependency("cool.io", ">= 0.3.2")
		gemspec.add_dependency("thin", '>= 1.2.7')
	end
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler not available. Install it with: gem install jeweler"
end

task :default => :build

