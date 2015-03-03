" Keybindings
" -----------

let mapleader = ","
let maplocalleader = ";"

" kj - The intuitive way to get out of insert mode
"imap kj         <Esc>

" jj - The most intuitive way to get out of insert mode. Like a boss!
"imap jj         <Esc>
imap <c-c> <esc>

" Make Y consistent with D and C
map Y           y$

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Split screen
map <leader>v   :vsp<CR>

" Move between screens
"map <leader>w   ^Ww
"map <leader>=   ^W=
"map <leader>j   ^Wj
"map <leader>k   ^Wk
"nmap <C-j>      <C-w>j
"nmap <C-k>      <C-w>k
"nmap <C-h>      <C-w>h
"nmap <C-l>      <C-w>l

" Open .vimrc file in new tab. Think Command + , [Preferences...] but with Shift.
map <leader>gvk       :tabedit ~/.vim/init/keybindings.vim<CR>

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" Undo/redo - Doesn't MacVim already have this?
map <D-z>       :earlier 1<CR>
map <D-Z>       :later 1<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``
map <silent> <F7> gg=G``:echo "Reformatted."<CR>

" Jump to a new line in insert mode
"imap <D-CR>     <Esc>o
nmap <C-o>     o<c-c>

" Fast scrolling
"nnoremap <C-e>  3<C-e>
"nnoremap <C-y>  3<C-y>

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down>  :cn<CR>
map <M-D-Up>    :cp<CR>

" Previous/next buffers
map <M-D-Left>  :bp<CR>
map <M-D-Right> :bn<CR>

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" Command-T
map <D-N>       :CommandTFlush<CR>:CommandT<CR>
map <leader>ff   :CommandTFlush<CR>:CommandT<CR>

" ctags with rails load path
map <leader>rt  :!rails runner 'puts $LOAD_PATH.join(" ")' \| xargs /usr/local/bin/ctags -R public/javascripts<CR>
map <leader>T   :!rails runner 'puts $LOAD_PATH.join(" ")' \| xargs rdoc -f tags<CR>

" Git blame
map <leader>gb   :Gblame<CR>

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
"map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>
"map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>
map <leader>C "+y

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Easy access to the shell
map <Leader><Leader> :!

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" Recalculate diff when it gets messed up.
nmap du :diffupdate<CR>

" Gundo.vim
map <leader>u :GundoToggle<CR>


"-------------------------------
"        Ben's Mappings
"-------------------------------

" override regreplop keys and free <C-k>
nmap <C-y> <Plug>ReplaceMotion
nmap <C-y><C-y> <Plug>ReplaceLine
vmap <C-y> <Plug>ReplaceVisual

" g mappings for Rails
map <leader>gr     :topleft :split config/routes.rb<cr>
map <leader>gds    :topleft 100 :split db/schema.rb<cr>
map <leader>gg     :topleft 100 :split Gemfile<cr>

" tab controls
nmap <C-t> :tabnew<cr>
nmap <C-p> :tabp<cr>
nmap <C-n> :tabn<cr>
nmap <leader>q :q<cr>
" open files in directory of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" f mappings for Rails
" app/
map <leader>fav  :CommandTFlush<cr>:CommandT app/views<cr>
map <leader>fac  :CommandTFlush<cr>:CommandT app/controllers<cr>
map <leader>fam  :CommandTFlush<cr>:CommandT app/models<cr>
map <leader>faa  :CommandTFlush<cr>:CommandT app/assets<cr>
map <leader>fas  :CommandTFlush<cr>:CommandT app/services<cr>
map <leader>fa<cr> :CommandTFlush<cr>:CommandT app<cr>
map <leader>fah   :CommandTFlush<cr>:CommandT app/helpers<cr>
map <leader>faw   :CommandTFlush<cr>:CommandT app/workers<cr>
map <leader>fs<cr> :CommandTFlush<cr>:CommandT spec<cr>
map <leader>fsm  :CommandTFlush<cr>:CommandT spec/models<cr>
map <leader>fsc  :CommandTFlush<cr>:CommandT spec/controllers<cr>
map <leader>fsl  :CommandTFlush<cr>:CommandT spec/lib<cr>
map <leader>fsf  :CommandTFlush<cr>:CommandT spec/factories<cr>
map <leader>fc<cr> :CommandTFlush<cr>:CommandT config<cr>
map <leader>fci  :CommandTFlush<cr>:CommandT config/initializers<cr>
map <leader>fce  :CommandTFlush<cr>:CommandT config/environments<cr>
map <leader>fcl  :CommandTFlush<cr>:CommandT config/locales<cr>
map <leader>fl   :CommandTFlush<cr>:CommandT lib<cr>
"map <leader>ff  :CommandTFlush<cr>:CommandT features<cr>
map <leader>fdd  :CommandTFlush<cr>:CommandT db<cr>
map <leader>fdm  :CommandTFlush<cr>:CommandT db/migrate<cr>
map <leader>fe   :CommandTFlush<cr>:CommandT %%<cr>
map <leader>f.   :CommandTFlush<cr>:CommandT ./<cr>
map <leader>fv   :CommandTFlush<cr>:CommandT ~/.vim/init<cr>
"map <leader>fb   :CommandTFlush<cr>:CommandT ~/.bash_it/aliases/enabled<cr>
map <leader>fb<cr> :CommandTFlush<cr>:CommandT app/assets/javascripts/backbone<cr>
map <leader>fbm  :CommandTFlush<cr>:CommandT app/assets/javascripts/backbone/models<cr>
map <leader>fbr  :CommandTFlush<cr>:CommandT app/assets/javascripts/backbone/routers<cr>
map <leader>fbt  :CommandTFlush<cr>:CommandT app/assets/javascripts/backbone/templates<cr>
map <leader>fbv  :CommandTFlush<cr>:CommandT app/assets/javascripts/backbone/views<cr>

"map <leader>fe   :CommandTFlush<cr>:CommandT extras<cr>
" e mappings for Rails
" app/
map <leader>ee   :edit %%
map <leader>evv  :edit app/views/
map <leader>ecc  :edit app/controllers/
map <leader>em   :edit app/models/
map <leader>eas   :edit app/assets/
map <leader>eap  :edit app/
map <leader>eh   :edit app/helpers/
map <leader>ess  :edit spec/
map <leader>esm  :edit spec/models/
map <leader>esc  :edit spec/controllers/
map <leader>esl  :edit spec/lib/
map <leader>esf  :edit spec/factories/
map <leader>ecf  :edit config/
map <leader>eci  :edit config/initializers/
map <leader>ece  :edit config/environments/
map <leader>el   :edit lib/
"map <leader>ef  :edit features/
map <leader>edm  :edit db/migrate/

map <leader>ew  :edit ~/workspace/
map <leader>eh  :edit ~/
map <leader>evi  :edit ~/.vim/init/

map <leader>w  :w %%

map <leader>rr :r %%

map <leader>rgm  :! bundle exec rails g migration 
map <leader>rdm  :! bundle exec rake db:migrate; bundle exec rake db:test:prepare<cr>

nmap <leader>p :set paste<cr>:r !pbpaste<cr>:set nopaste<cr>

" Open previous file
nmap <leader>gb <c-^>
nmap <leader>gp <c-^>
