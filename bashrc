############################################
### option #################################
eval "$(zoxide init bash)"
eval "$(starship init bash)"
set bell-style none
set -o emacs

############################################
### ENV ####################################
# FZF 
export FZF_DEFAULT_COMMAND="fd --hidden --exclude={Applications,Library,.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
export FZF_DEFAULT_OPTS="--color=bg+:-1,fg+:#BE002F,gutter:-1,border:#C0C0C0 \
        --no-separator \
        --no-scrollbar \
        --preview 'if test -d {}  
        exa --all --long {} 
else  
        bat --color=always --line-range=:500 --theme=OneHalfLight {}  
end'" 
# editor 
export EDITOR="nvim"
#Rust 
export PATH=/Users/Miku/.cargo/bin:$PATH
#### llvm
export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
#clash
export https_proxy="http://127.0.0.1:7890"
export http_proxy="http://127.0.0.1:7890"
export all_proxy="socks5://127.0.0.1:7890"

############################################ 
### alias ################################## 
alias  v="nvim"
alias  ls="exa"
alias  la="exa -a"
alias  lt="exa -T"
alias  ltl="exa -T -L"
alias  ll="exa -l"
alias  lla="exa -l -a"
alias  zl="yazi"
alias  python="python3"

############################################
### myfun ##################################
function __yazicd() {
	tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

