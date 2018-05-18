state = 0

case state
when 0
  if ch == '.'
    state = 1
  elsif ch.match(/[0-9]/)
    state = 2
  else
    state = -1
  end
when 1
  if ch.match(/[0-9]/)
    state = 3
  else
    state = -1
  end
when 2
  if ch.match(/[0-9]/)
    state = 2
  elsif ch == '.'
    state = 3
  elsif ch == 'E'
    state = 4
  else
    state = -1
  end
when 3
  if ch.match(/[0-9]/)
    state = 3
  elsif ch == 'E'
    state = 4
  else
    state = -1
  end
when 4
  if ch == '+' or ch == '-'
    state = 5
  elsif ch.match(/[0-9]/)
    state = 6
  else
    state = -1
  end
when 5
  if ch.match(/[0-9]/)
    state = 6
  else
    state = -1
  end
when 6
  if ch.match(/[0-9]/)
    state = 6
  else
    state = -1
  end
end

