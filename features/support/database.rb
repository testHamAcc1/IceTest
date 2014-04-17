require 'active_record'
require 'active_support'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql",
  :host     => "localhost",
  :username => "",
  :password => "",
  :database => "test"
)
