def leap_year?(year)
  if year % 100 == 0 && year % 400 != 0
    return false
  end

  if year % 4 == 0
    return true
  end

end
