" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'bling/vim-airline.git'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" カラースキーマ設定
" colorscheme molokai

" シンタックスハイライトを有効化
syntax on

" yank（コピー）した内容をクリップボードに共有
set clipboard=unnamed

" 検索内容をハイライト
set hlsearch

" 検索で大小文字の違いを無視
set ignorecase

" タブ入力を2つの半角スペースに
set expandtab
set tabstop=2
set shiftwidth=2

" 改行時の自動インデント有効化
set autoindent

" インクリメンタルサーチの有効化
set incsearch

" 行番号の表示
set number

" ステータスラインの表示
set laststatus=2
