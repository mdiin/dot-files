(module config.plugin
  {autoload {nvim aniseed.nvim
             a aniseed.core
             util config.util
             packer packer}})

(defn- safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :config.plugin. name))]
    (when (not ok?)
      (print (.. "config error: " val-or-err)))))

(defn- use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
  (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (use (a.assoc opts 1 name))))))))

;plugins managed by packer
(use
  ;plugin Manager
  :wbthomason/packer.nvim {}
  ;nvim config and plugins in Fennel
  :Olical/aniseed {:branch :develop}
  ;clojure
  :Olical/conjure {:branch :master :mod :conjure :ft "clojure"}
  ;file searching
  :nvim-telescope/telescope.nvim {:requires [:nvim-lua/popup.nvim
                                             :nvim-lua/plenary.nvim]
                                  :mod :telescope}
  ;parsing system
  :nvim-treesitter/nvim-treesitter {:run ":TSUpdate"
                                    :mod :treesitter}
  ;lsp
  :neovim/nvim-lspconfig {:mod :lspconfig}
  ;autocomplete
  :hrsh7th/nvim-cmp {:requires [:hrsh7th/cmp-buffer
                                :hrsh7th/cmp-nvim-lsp
                                :saadparwaiz1/cmp_luasnip]
                     :mod :cmp}
  ;theme
  :morhetz/gruvbox {:mod :theme}
  
  ; Snippets
  ;:SirVer/ultisnips {}
  :L3MON4D3/LuaSnip {:mod :luasnip}
  
  ; Fish shell
  :dag/vim-fish {:ft "fish"}
  
  ; Static analysis framework
  :dense-analysis/ale {:mod :ale}
  
  :elzr/vim-json {:ft "json"}
  
  :guns/vim-sexp {:ft "clojure"}
  
  ; Status line
  :itchyny/lightline.vim {:mod :lightline}
  :shinchu/lightline-gruvbox.vim {}

  :mhinz/vim-signify {}

  ;:ryanoasis/vim-devicons {}
  :kyazdani42/nvim-web-devicons {:mod :devicons}

  ; Various extras, navigation, convenience mappings etc.
  :tpope/vim-commentary {}
  :tpope/vim-repeat {}
  :tpope/vim-sensible {}
  :tpope/vim-surround {}
  :tpope/vim-unimpaired {}
  :tpope/vim-eunuch {}
  :tpope/vim-projectionist {}

  ; Git integration
  :tpope/vim-fugitive {}
  :airblade/vim-gitgutter {}

  ; Browsing the file system
  :justinmk/vim-dirvish {}
  :kristijanhusak/vim-dirvish-git {}
  :fsharpasharp/vim-dirvinist {}

  ; Execute tests from within vim
  ;:vim-test/vim-test {:mod :test}
  :rcarriga/vim-ultest {:mod :test
                        :requires [:vim-test/vim-test]
                        :run ":UpdateRemotePlugins"}

  ; Github integration
  :pwntester/octo.nvim {:mod :octo}

  ; Highlight yank
  :machakann/vim-highlightedyank {}

  ; Typescript + React
  :peitalin/vim-jsx-typescript {:ft "typescriptreact"}

  :MaxMEllon/vim-jsx-pretty {:ft "typescriptreact"}
  )
