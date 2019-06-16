function! Sqrt(n)
  if a:n < 0.0
    return "nan"
  endif

  "Babylonian method
  let l:x = a:n / 2.0
  let l:s = 0
  while l:s != l:x
    let l:s = l:x
    let l:x = (l:x + a:n / l:x) / 2.0
  endwhile

  return l:s

endfunction

command! -nargs=1 Sqrt call Sqrt(<f-args>)
