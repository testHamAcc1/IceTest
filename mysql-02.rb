#!/usr/bin/ruby

require 'mysql'


begin
    con = Mysql.new 'localhost', '', '', 'test'
    #puts con.get_server_info
    #rs = con.query 'SELECT VERSION()'
    #puts rs.fetch_row    
    
    #con.list_dbds.each do |db|
    # puts db
    #end
    
    con.query("CREATE TABLE IF NOT EXISTS \
     Writers(Id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(25))")
    con.query("INSERT INTO Writers(Name) VALUES('Jack London')")
    con.query("INSERT INTO Writers(Name) VALUES('Honore de Balzac')")
    con.query("INSERT INTO Writers(Name) VALUES('Lion Feuchtwanger')")
    con.query("INSERT INTO Writers(Name) VALUES('Emile Zola')")
    con.query("INSERT INTO Writers(Name) VALUES('Truman Capote')")   

rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close
end

