function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ''.branch : ''
  endif
  return ''
endfunction

function! Lightline_determine_colorscheme(name)
  if a:name =~ 'solarized'
    let g:lightline.colorscheme = 'solarized'
  elseif a:name == 'Tomorrow'
    let g:lightline.colorscheme = 'PaperColor'
  elseif a:name == 'Tomorrow-Night-Blue'
    let g:lightline.colorscheme = 'landscape'
  else
    let g:lightline.colorscheme = 'powerline'
  endif
  return g:lightline.colorscheme
endfunction

function! Lightline_update()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction
