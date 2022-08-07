require_relative './node'
require_relative './linked_list'

towns = LinkedList.new

towns.append('New York')
towns.append('Venice')
towns.append('Paris')
towns.prepend('London')
towns.prepend('Joeburg')
towns.insert_at('Madrid', 1)
towns.insert_at('Rome', -1)
puts towns


