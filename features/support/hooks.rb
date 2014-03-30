ActiveRecord::Base.establish_connection(
  :adapter  => "mysql",
  :host     => "localhost",
  :username => "",
  :password => "",
  :database => "test"
)

Before do
ActiveRecord::Base.connection.execute('delete from <table>')
end

class user < ActiveRecord::Base
	self.table_name = 'usr'
	alias_attribute :first_name, :fnm
end
