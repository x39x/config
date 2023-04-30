if status is-interactive


    #NOTE: alias

    alias nv="nvim"
    alias c="cd"
    alias  e="exa"
    alias  et="exa -T"
    alias  etl="exa -T -L"
    alias  ea="exa -a"
    alias  el="exa -l"
    alias  ela="exa -l -a"
    alias  rf="rm -r -f"


    #NOTE: --?

    #### starship
    starship init fish | source
    #### zoxide
    zoxide init fish | source
    #### --?
    export EDITOR="nvim"
    export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"
    #### export FZF_DEFAULT_COMMAND="fd --hidden"
    export FZF_DEFAULT_COMMAND="fd --hidden --exclude={Applications,Library,.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
    #### homebrew mirrors
    # export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles


    #NOTE:" Environment variable

    #### nvm.fish (plug) PATH 
    set -x PATH /Users/Miku/.local/share/nvm/v19.6.0/bin $PATH
    #### python3
    # set -x PATH /Users/Miku/.pyenv/shims/python3 $PATH
    alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew" # avoid bug
    #### homebrew PATH 
    # set -x PATH /opt/homebrew/sbin $PATH
    # set -x PATH /opt/homebrew/bin $PATH

    #NOTE: clashx

    export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890


    # NOTE: key bind

    function fish_user_key_bindings
        bind -M default \co 'lfcd; and commandline -f repaint'
    end


end

