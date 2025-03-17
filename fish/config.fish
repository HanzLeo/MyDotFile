if status is-interactive
    # Commands to run in interactive sessions can go here
end

# removes the mapping <C-t> which is being used to close the terminal in NeoVim
bind --erase --all \ct

# fish is aware of the paths set by brew:
# to ensure that brew paths are recognized inside fish, run:
#    /opt/brew/bin/brew shellenv >> ~/.config/fish/config.fish 

fish_config prompt choose scales

# set -x TERM tmux-256color

# # modify the prompt
# function fish_prompt
#     string join '' -- $PWD '>'
# end

# runs zoxide if installed
#if type -q zoxide
#zoxide init fish --cmd cd | source
#end

# runs neofetch if installed
#if type -q neofetch
#neofetch
#end

#生成修复命令的别名
eval (thefuck --alias | tr '\n' ';') # <button class="citation-flag" data-index="2"><button class="citation-flag" data-index="3">

# 启用 Starship
if status --is-interactive
    starship init fish | source
end

# DeepSeek API Key
set -x DEEPSEEK_API_KEY sk-557161198f394c3e9e49c8a64ba8c4d0
