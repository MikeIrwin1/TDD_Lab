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

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def loan_money(lender, lendee, num)

  new_money_lender = lender[:monies] -= num
  new_money_lendee = lendee[:monies] += num
  return new_money_lendee
end
