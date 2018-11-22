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
