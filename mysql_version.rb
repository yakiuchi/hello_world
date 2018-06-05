require 'mysql2'
require 'pp'

client = Mysql2::Client.new(:host => "127.0.0.1", :username => "root")
client.query("SELECT version()").each do |row|
  pp row
end
