def fibs_rec(pos)

  if pos == 1 
    return [0]
  elsif pos == 2
    return [0, 1]
  else
    seq = fibs_rec(pos - 1)
    seq << seq[-1] + seq[-2]
    return seq
  end 
end