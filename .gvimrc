" ------------------------------------------------
"  Vim Setting for MQL4 Editor by sysfxtry1
" ------------------------------------------------

" ��{�ݒ� ---------------------------------------
set number			" �s�ԍ��̕\��
set ruler			" �J�[�\���ʒu��\��
set cursorline		" �ҏW�s�̍s�ԍ�����Ƀn�C���C�g����
set wrap			" �E�B���h�E�̕���蒷���s�͐܂�Ԃ�
set wrapscan		" �������t�@�C�������܂Ői�񂾂�擪����Ăь�������B
set hlsearch		" �������ʂ��n�C���C�g�\������
set tabstop=4		" <Tab> ���Ή�����X�y�[�X��
set softtabstop=4	" �ҏW���쎞�� <Tab> ���Ή�����X�y�[�X��
set shiftwidth=4	" �C���f���g�P�̃X�y�[�X���B
set autoindent		" �V�����s��ǉ������Ƃ��̃C���f���g�����ݍs�Ɠ����ɂ���B
set wrap			" �E�B���h�E�̕���蒷���s�͐܂�Ԃ�
set wrapscan		" �������t�@�C�������܂Ői�񂾂�擪����Ăь�������B
set showmatch		" �����ʂ���͂����Ƃ��A�Ή�����J�����ʂɈ�U�W�����v����B
set wildmenu		" �R�}���h���C���⊮���g�����[�h�ōs��
set directory=~/vmfiles/swap	"�X���b�v�t�@�C���̕ۊǐ�
set backupdir=~/vmfiles/backup "�o�b�N�A�b�v�t�@�C���̕ۊǐ�
set undodir=~/vmfiles/undo		"�A���h�D�t�@�C���̕ۊǐ�


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

" �z�F -------------------------------------------
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

" �I�����ɑO��̃Z�b�V������K���ۑ� -------------
if 1 && filereadable($HOME . '/vmfiles/Session.vim')
	au VimLeave * mks! ~/vmfiles/Session.vim
endif

" �V���[�g�J�b�g�L�[ -----------------------------
nnoremap	<C-t>		:tabnew<cr>
nnoremap	<C-w>		:tabclose
nnoremap	<C-tab>		:tabnext<cr>
nnoremap	<C-S-tab>	:tabprevious<cr>

" �t�@�C����ޕ� ---------------------------------
filetype plugin indent on	" �t�@�C����ނ̎������o�E�C���f���g�E�v���O�C��
filetype indent on
syntax on			" �\�����ɐF��������
