produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}



def select_fruit(item_list)
  items_keys = item_list.keys
  fruits = {} # initialize and empty hash
  counter = 0 # initialize a counter

  loop do

    break if counter == item_list.size

    current_key = items_keys[counter]
    current_value = item_list[current_key]

    if current_value == 'Fruit'
      fruits[current_key] = current_value
    end

    counter += 1
  end

  fruits
end

p select_fruit(produce)
