function! Pow(a, b)
  if a:b == 0
    return 1
  elseif a:b < 1
    return "nan"
  endif

  let l:x= a:a
  let l:n = a:b
  let l:buff = 1

  if l:n % 2
    " x^n = x * x^(n-1)
    let l:n -= 1
    let l:buff = l:x
  endif
 
  " x^n = (x^2)^(n/2)
  while l:n != 1
    let l:x = l:x * l:x
    let l:n = l:n / 2
  endwhile

  let l:x = l:x * l:buff

  return l:x
endfunction

command! -nargs=* Pow call Pow(<f-args>)
