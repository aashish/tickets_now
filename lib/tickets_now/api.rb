require 'savon'
require 'rails'

 module TicketsNow
  class API
    wsdl = 'http://ticketsnow.productserve.com/soap.php?wsdl'
    default = {:SecurityToken=>ENV['tickets_now_token']}
    client = Savon.new(wsdl)
    operations = client.operations("GetEIInfo", "GetEIInfoSoap")

    define_method("operations") do
      client.operations("GetEIInfo", "GetEIInfoSoap").map! {|x| x.underscore}
    end
    operations.each do |action|
      define_method("#{action.underscore}") do |argument = {}|
        o = client.operation("GetEIInfo", "GetEIInfoSoap", action)
        o.body = {"#{action}" => default.merge(argument)}
        res = o.call
        res = res.hash
        res[:envelope][:body]
      end
    end

    operations.each do |action|
      define_method("#{action.underscore}_body") do
        o = client.operation("GetEIInfo", "GetEIInfoSoap", action)
        o.example_body[action.to_sym]
      end
    end

  end
end