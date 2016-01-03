" ------------------------------------------------
"  Vim Setting for MQL4 Editor by sysfxtry1
" ------------------------------------------------

" 基本設定 ---------------------------------------
set number			" 行番号の表示
set ruler			" カーソル位置を表示
set cursorline		" 編集行の行番号を常にハイライトする
set wrap			" ウィンドウの幅より長い行は折り返し
set wrapscan		" 検索がファイル末尾まで進んだら先頭から再び検索する。
set hlsearch		" 検索結果をハイライト表示する
set tabstop=4		" <Tab> が対応するスペース数
set softtabstop=4	" 編集操作時の <Tab> が対応するスペース数
set shiftwidth=4	" インデント１つのスペース数。
set autoindent		" 新しい行を追加したときのインデントを現在行と同じにする。
set wrap			" ウィンドウの幅より長い行は折り返し
set wrapscan		" 検索がファイル末尾まで進んだら先頭から再び検索する。
set showmatch		" 閉じ括弧を入力したとき、対応する開き括弧に一旦ジャンプする。
set wildmenu		" コマンドライン補完が拡張モードで行う
set directory=~/vmfiles/swap	"スワップファイルの保管先
set backupdir=~/vmfiles/backup "バックアップファイルの保管先
set undodir=~/vmfiles/undo		"アンドゥファイルの保管先


" NeoBundle Setting ------------------------------
filetype off

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/vmfiles/bundle/neobundle.vim
endif

" neobundle.vim initialization
call neobundle#begin(expand('~/vmfiles/bundle'))
"NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neobundle.vim'

" Load of plugins
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vobornik/vim-mql4'

call neobundle#end()

NeoBundleCheck

" 配色 -------------------------------------------
set background=dark
colorscheme hybrid

" lightline --------------------------------------
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" MQL4 Editor ------------------------------------
set runtimepath+='~/vmfiles/bundle/vim-mql4'
let g:neocomplcache_enable_at_startup = 1
nnoremap	<F5>	:!"C:\Program Files (x86)\MetaTrader 4\mql64.exe" "%"<cr>

" 終了時に前回のセッションを必ず保存 -------------
if 1 && filereadable($HOME . '/vmfiles/Session.vim')
	au VimLeave * mks! ~/vmfiles/Session.vim
endif

" ショートカットキー -----------------------------
nnoremap	<C-t>		:tabnew<cr>
nnoremap	<C-w>		:tabclose
nnoremap	<C-tab>		:tabnext<cr>
nnoremap	<C-S-tab>	:tabprevious<cr>

" ファイル種類別 ---------------------------------
filetype plugin indent on	" ファイル種類の自動検出・インデント・プラグイン
filetype indent on
syntax on			" 構文毎に色分けする
