def get_name(person)
  return person[:name]
end

def get_tv(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if person[:favourites][:snacks].include?(food)
    return true
  end
  return false
end

def add_friend(person, name)
  person[:friends]<< name
end

def remove_friend(person, name)
  person[:friends].delete(name)
end

# def total_money(people)
#   total = 0
#   for person in people
#     total += person[:monies]
#   end
#   return total
# end

def total_money(people)
  total_2 = people.map { |money| money[:monies]}.sum
  return total_2
end

def loan_money(lender, lendee, num)

  new_money_lender = lender[:monies] -= num
  new_money_lendee = lendee[:monies] += num
  return new_money_lendee
end

def fave_food_array(people)
  food_array = Array.new
  for foods in people
    food_array.concat(foods[:favourites][:snacks])
  end
  return food_array
end


def no_friends(people)
  no_friends_array = Array.new
  for name in people
    if name[:friends].length == 0
      no_friends_array << name[:name]
    end
  end
  return no_friends_array
end
