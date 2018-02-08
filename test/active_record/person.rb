require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: "#{Dir.pwd}/test/active_record/people.sqlite3",
})

class Person < ActiveRecord::Base
end
