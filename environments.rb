configure :development do
set :database, "sqlite3:database.sqlite3"
 set :show_exceptions, true
end

configure :production do
 db = 'postgres://xqatqaaqpsmxby:imbdtwQw5eWgtZcSFY0myJch5C@ec2-54-204-15-48.compute-1.amazonaws.com:5432/d34hh5q9m0com2')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end




