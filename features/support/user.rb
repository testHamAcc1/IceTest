class User < ActiveRecord::Base
def queue
	@queue ||= TransactionQueue.new
end

def update_field(userid) 
	# update_table :account_balances do |t|
	# 	t.string :number
	# 	t.integer :balance
	# 	end
	User.select(:name).distinct
end

end