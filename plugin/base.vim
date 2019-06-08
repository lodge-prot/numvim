function Average(...)
  let sum = 0.0

  for val in a:000
    let sum += val
  endfor
  echo sum / a:0
endfunction

command! -nargs=* Avg call Average(<f-args>)
