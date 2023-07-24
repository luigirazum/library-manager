require_relative 'classes/person'

puts '# create a person'
puts '# person = Person.new(13, \'John\', parent_permission: false)'
puts '# the following is the \'person\' created'
person = Person.new(13, 'John', parent_permission: false)
p person
