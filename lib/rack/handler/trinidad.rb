require 'rack'
require 'trinidad'

gem 'jruby-rack'
require 'rack/handler/servlet'

module Rack
  module Handler
    class Trinidad < Rack::Handler::Servlet
      def self.run(app, options={})
        opts = options.dup

        # some libs use :Port, :port and :Host, :host, unify this
        opts.each {|k,v| opts[k.to_s.downcase.to_sym] = v}

        opts[:app] = app
        opts[:port] ||= 3000
        opts[:address] = opts[:host] || 'localhost'
        opts[:servlet] = {:instance => servlet, :name => 'RackServlet'}
        opts[:jruby_max_runtimes] ||= 1

        context = org.jruby.rack.embed.Context.new('Trinidad')
        dispatcher = org.jruby.rack.embed.Dispatcher.new(context, self.new(app))
        servlet = org.jruby.rack.embed.Servlet.new(dispatcher, context)

        ::Trinidad::CommandLineParser.new.load_configuration(opts)
        ::Trinidad::Server.new.start
      end
    end
  end
end

Rack::Handler.register 'trinidad', 'Rack::Handler::Trinidad'
