# 特殊符号
# 能粘贴到 notepad 上并正确显示的，就是能在 xshell 上能用的
# https://wenku.baidu.com/view/fddf6408844769eae009ed14.html?re=view
# https://www.qianduan.net/html-special-characters-daquan/

#local SEGMENT_SEPARATOR=$'\ue0b0'
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
# local current_dir="%{$fg_bold[cyan]%}%c%{$reset_color%}"


if [[ $UID -eq 0 ]]; then
{
    local user_host="%{$fg_bold[white]%}[%{$fg_bold[red]%}%n@%m%{$fg_bold[white]%}]%{$reset_color%}"
    local user_symbol="%{$fg_bold[red]%}#%{$reset_color%}"
    local current_dir="%{$fg_bold[white]%}[%{$fg_bold[red]%}%~%{$fg_bold[white]%}]%{$reset_color%}"
}
else
{
    local user_host="%{$fg_bold[red]%}[%{$fg_bold[white]%}%n@%m%{$fg_bold[red]%}]%{$reset_color%}"
    local user_symbol="%{$fg_bold[green]%}$%{$reset_color%}"
    local current_dir="%{$fg_bold[red]%}[%{$fg_bold[white]%}%~%{$fg_bold[red]%}]%{$reset_color%}"
}
fi

local current_time="%{$fg_bold[red]%}[%{$fg_bold[white]%}20%D %*%{$fg_bold[red]%}]%{$reset_color%}"
# local current_time="%{$fg_bold[red]%}[%{$fg_bold[white]%}$(date +'%F %T')%{$fg_bold[red]%}]%{$reset_color%}"

# local colors="
# %{$fg_bold[cyan]%} color_name %{$reset_color%}

# %{$fg_bold[black]%} black %{$reset_color%}
# %{$fg_bold[red]%} red %{$reset_color%}
# %{$fg_bold[green]%} green %{$reset_color%}
# %{$fg_bold[yellow]%} yellow %{$reset_color%}
# %{$fg_bold[blue]%} blue %{$reset_color%}
# %{$fg_bold[magenta]%} magenta %{$reset_color%}
# %{$fg_bold[cyan]%} cyan %{$reset_color%}
# %{$fg_bold[white]%} white %{$reset_color%}
# %{$fg_bold[purple]%} purple %{$reset_color%}
# %{$fg_bold[light gray]%} light gray %{$reset_color%}
# %{$fg_bold[brown]%} brown %{$reset_color%}

# "

# echo ${colors}

# local last_cmd=$(!!:p)

# PROMPT='
# ┌─ ${current_time} ${user_host} ${current_dir} $(git_prompt_info)
# |       %{$fg_bold[black]%}pre_cmd:$(history | tail -n 1) %{$reset_color%}
# └─ ${user_symbol} ${ret_status}%{$reset_color%} '

# PROMPT='
# ╭─ ${current_time} ${user_host} ${current_dir} $(git_prompt_info)
# |       %{$fg_bold[black]%}pre_cmd:$(history | tail -n 1) %{$reset_color%}
# ╰─ ${user_symbol} ${ret_status}%{$reset_color%} '



PROMPT='
╭─ ${current_time} ${user_host} ${current_dir} $(git_prompt_info)
╰─ ${user_symbol} ${ret_status}%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


