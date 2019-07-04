" Подсвечивать строку под курсором
set cursorline

" Включить номера строк
set number

" Нумерация строк относительно текущей позиции курсора, чтобы показать расстояние до этой строки.
set relativenumber

" Кодировка файлов
set fileencodings=utf-8,cp1251,cp866,koi8-r

" Включение режима вставки без лишних пробелов (F3)
set pastetoggle=<F3>

" Отключает режим совместимости с Vi 
set nocompatible

" Динамический переносдлинных строк
set wrap
set linebreak

" Поддержка 256 цветов (темы)
set t_Co=256
set background=dark

" Отключение звукового сигнала и мигания
set noerrorbells
set vb t_vb=

" Показывать режим работы VIM
set showmode

" Подсветка результатов поиска
set hlsearch

" Подсветка первого вхождения по мере набора поисковой фразы
set incsearch

" Показывать положение курсора всё время
set ruler

" Показывать незавершённые команды в статусбаре
set showcmd

" Поддержка мыши
" set mouse=a
" set mousemodel=popup

" Корректная работа Backspace
set bs=2

" Цветовая тема
"colorscheme happy_hacking
"colorscheme molokai
"colorscheme xoria256
"colorscheme seoul256
"colorscheme twilight256
"colorscheme shades-of-pastel
"colorscheme seoul256-light
"colorscheme wombat256mod
colorscheme zenburn

" Кодировка по умолчанию
set encoding=utf-8
set termencoding=utf-8

" Формат файла по умолчанию
set fileformat=unix

" Формат файла, который влияет на окончания строк — будет перебирать в указанном порядке
set ffs=unix,dos,mac

" Размер отступов
set shiftwidth=4

" Размеры табуляций
set tabstop=4
set softtabstop=4

" Более 'умные' отступы при вставке их с помощью tab.
set smarttab 

" Включить автоотступы
set autoindent

"smartindent — делает то же, что и autoindent плюс автоматически выставляет отступы в «нужных» местах. В частности, отступ ставится после строки, которая заканчивается символом { , перед строкой, которая заканчивается символом }, удаляется перед символом #, если он следует первым в строке и т.д.}
set smartindent

" expandtab — в режиме вставки заменяет символ табуляции на соответствующее количество пробелов. Так же влияет на отступы, добавляемые командами >> и <<.
set expandtab

" Влючить подстветку синтаксиса
filetype on
filetype plugin on
filetype plugin indent on
syntax on 

" Отключить создание файлов бекапа и свапа
set nobackup
set nowritebackup
set noswapfile

"Автоматическое переключение рабочей папки
set autochdir 

" всегда показывать строку статуса
set laststatus=2   
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
autocmd FileType python set breakindentopt=shift:4

" Дополнительная информация в строке состояния
set wildmenu

" Автоматическое закрытие скобок
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT> 

" No switch keyboard layout for commands in normal mode.
"set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Коррекиное отображение кирилицы
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255
set iminsert=0

" Запуск Bash по <Ctrl+d>, так же по <Ctrl+d> возвращение в vim
noremap <C-d> :!/bin/bash<CR>

" Python, подсвечивать всё.
let python_highlight_all = 1



" Включаем фолдинг (сворачивание участков кода)
set foldenable
"
" " Сворачивание по отступам
set fdm=indent 
set foldopen=all



" При создании нового файла *.py и *.pyw будут сразу добавлены два заголовка с
"  путем до интерпретатора python и с указанием кодировки utf-8
function! BufNewFile_PY()
0put = '#! /usr/bin/env python3'
$put =' '
"$put =
normal G
endfunction
"
autocmd BufNewFile *.py call BufNewFile_PY()
autocmd BufNewFile *.pyw call BufNewFile_PY()

" Включаем Poweline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set rtp+=/usr/share/powerline/bindings/vim
set showtabline=2
"set guifont=Fira\ Mono\ Regular\ 14
"let g:Powerline_symbols = 'fancy'
