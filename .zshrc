# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 加载 zsh-syntax-highlighting 插件
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 加载 zsh-autosuggestions 插件
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# 定义插件（Oh My Zsh 如果启用）
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# 添加别名
alias ll='ls -l'
alias gs='git status'
alias gp='git pull'
alias cls='clear'

#配置主题
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# 其他自定义配置可以放在这里

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
