{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "sasacocic";
  home.homeDirectory = "/Users/sasacocic";



  # targets.genericLinux.enable = true; # vimjoyer was saying to enable this?


  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [

    /*
      as of writing here is what my `brew list` gives me. Basically everything I have installed.
      ==> Formulae
      aspell          fnm             htop            libksba         libuv           neovim          pinentry        tree-sitter
      bat             fzf             jq              libnghttp2      libvterm        nettle          pkg-config      unbound
      bdw-gc          gettext         libassuan       libtasn1        luajit          npth            readline        unibilium
      bun             gmp             libevent        libtermkey      luv             oniguruma       ripgrep         utf8proc
      ca-certificates gnupg           libgcrypt       libtool         m4              openssl@1.1     stripe
      fd              gnutls          libgpg-error    libunistring    msgpack         p11-kit         tmux
      fish            guile           libidn2         libusb          ncurses         pcre2           tree

      ==> Casks
      alacritty               font-cascadia-code      mochi                   slack
      discord                 font-ibm-plex           obs                     telegram
      insomnia                rectangle               vip-access
    */

    /*
      things I have transitioned

      neovim          
      bdw-gc          gettext         libassuan       libtasn1        luajit          npth            readline        unibilium
      bun             gmp             libevent        libtermkey      luv             oniguruma       ripgrep         utf8proc
      ca-certificates gnupg           libgcrypt       libtool         m4              openssl@1.1     stripe
      fd              gnutls          libgpg-error    libunistring    msgpack         p11-kit         tmux
      fish            guile           libidn2         libusb          ncurses         pcre2           tree

      ==> Casks
      emacs                   rectangle


    */


    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
    pkgs.direnv
    pkgs.nix-direnv # I think this will install dir env - idk what the point of doing this is? I guess I can commit this file up then what? I guess if I have nix I should just be able to do nix-shell -p home-manager && home-manager switch and then everything should just be available in my environment right?  

    # actually don't know if I need it, because I have no clue wtf it does. Looks like it just makes it easier to use nix?
    # pkgs.devenv # similar to direnv and also uses direnv so not sure if I need direnv twice?

    pkgs.git
    # pkgs.pgadmin4 - was just trying to see if I can get pgadmin

    pkgs.nil # nix language server
    pkgs.nixpkgs-fmt # nix formatter

    # packages to add: alacritty, tree, 
    # alacritty will be somewhat problematic on mac since it's not an app. It's a binary. so to open it I'd have to call it from another terminal. 

    # TODO: switch over emacs config so home manager can manage it
    pkgs.emacs # there seem to be some issues with my setup and using emacs from nix, but maybe it was just the fact I was probably using a different version of emacs?


    pkgs.zoxide


    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')


    pkgs.bat
    pkgs.lua-language-server

    # https://github.com/nix-community/home-manager/issues/884 <- this is worth checking out because it makes me think using home-manager incorrectly 
    # pkgs.neovim
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;



    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';


    # this should edit my .gitconfig
    ".gitconfig".source = dotfiles/.gitconfig;

    ".alacritty.toml".source = dotfiles/.alacritty.toml;

    # fish configs
    ".config/fish/fish_variables".source = dotfiles/fish/fish_variables;

    ".config/fish/functions".source = dotfiles/fish/functions;


    # nvim config - seems to be doing nothing
    # also no idea why i'm doing this now? any reason?
    # I was having trouble with lazy vim because of this pretty sure. So I'm commenting it for now
    #".config/nvim".source = dotfiles/nvim;


    # TODO: this is a bit of a chicken and egg problem right now.
    # I need to have experimental features enabled, but they're enabled
    # by the nix.conf and I need those to run home-manager switch
    # nix config
    # ".config/nix/nix.conf".source = dotfiles/nix/nix.conf;

  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/sasacocic/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;



  # idk what I'm going here I just copied this from 
  programs = {
    fish.enable = true; # this is default enabled it seems
    fish.shellAbbrs = {
      pr = "poetry run";
    };
    git.enable = true;
    direnv = {
      enable = true;
      # enableFishIntegration = true;
      nix-direnv.enable = true;
    };

    zoxide.enable = true;
    zoxide.enableFishIntegration = true;

	# got this from the vimjoyer video
    neovim = {
    	enable = true;

	viAlias = true;
	vimAlias = true;
	vimdiffAlias = true;


	plugins = [
		pkgs.vimPlugins.gruvbox-nvim
		pkgs.vimPlugins.catppuccin-nvim
		pkgs.vimPlugins.kanagawa-nvim
		pkgs.vimPlugins.rose-pine
		# above are themes
		pkgs.vimPlugins.telescope-nvim
		pkgs.vimPlugins.nvim-treesitter.withAllGrammars # should probably reduce this only to things I use?
		pkgs.vimPlugins.nvim-treesitter-context# should probably reduce this only to things I use?
		pkgs.vimPlugins.nvim-autopairs
		pkgs.vimPlugins.nvim-surround # I assume this is like vim-surround just for neovim - but tbh not really sure
		pkgs.vimPlugins.oil-nvim
		pkgs.vimPlugins.nvim-lspconfig
		pkgs.vimPlugins.nvim-cmp
		pkgs.vimPlugins.cmp-nvim-lsp # LSP source for nvim-cmp
		pkgs.vimPlugins.cmp_luasnip # Snippets source for nvim-cmp
		pkgs.vimPlugins.luasnip # Snippets plugin
		pkgs.vimPlugins.conform-nvim
	];


	# wtf does this do???? is this init.lua?
	# '' means multi line string
	extraLuaConfig = ''
	${builtins.readFile ./dotfiles/nvim/options.lua}
	${builtins.readFile ./dotfiles/nvim/plugin/telescope.lua}
	${builtins.readFile ./dotfiles/nvim/plugin/nvim-autopairs.lua}
	${builtins.readFile ./dotfiles/nvim/plugin/nvim-surround.lua}
	${builtins.readFile ./dotfiles/nvim/plugin/oil-nvim.lua}
	${builtins.readFile ./dotfiles/nvim/plugin/nvim-cmp.lua}
	${builtins.readFile ./dotfiles/nvim/plugin/treesitter.lua}
	${builtins.readFile ./dotfiles/nvim/plugin/conform.lua}
	${builtins.readFile ./dotfiles/nvim/lsp_stuff.lua}

	'';

    };
  };


}
