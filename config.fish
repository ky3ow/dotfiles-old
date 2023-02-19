if status is-interactive
    fish_vi_key_bindings
    bind -M insert \ce accept-autosuggestion

    set -x O 'origin'
    set -x B "$(git branch --show-current | cat)"
    set -x H 'HEAD'

    function git --wraps git
        if pwd -P | grep -q "^\/mnt\/c\/*"
            git.exe $argv
        else
            command git $argv
        end
    end

    function checkout --wraps "git checkout"
        git checkout $argv[1] && gbcurr
    end

    function checkout_ff --wraps "git checkout"
        git checkout $argv[1] && gbcurr && ff
    end

    alias src='source ~/.config/fish/config.fish'

    alias gc='git commit'
    alias gupd='git commit --amend --no-edit'

    alias gco='checkout'
    alias gcof='checkout_ff'

    alias ga='git add'
    alias gp='git push'
    alias gP='git pull'

    alias gst='git status'

    alias gf='git fetch'
    alias ff='gpr && git pull --ff-only'
    alias gpr='git remote prune $O'

    alias gR='git reset --hard'
    alias gr='git reset --soft'

    alias gcp='git cherry-pick'
    alias gcpc='gcp --continue'
    alias gcpa='gcp --abort'

    alias gre='git rebase'
    alias grec='gre --continue'
    alias grea='gre --abort'

    alias gm='git merge'
    alias gmr='git push -u origin HEAD'

    alias gbc='git branch --show-current | pbcopy'
    alias gbcurr='export B="$(git branch --show-current | cat)"'

    set -x EDITOR nvim
    set -x VISUAL nvim

    function starship_transient_prompt_func
        starship module character
    end
    starship init fish | source
    enable_transience

end


switch (uname)
    case Linux
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    cd $wezterm_startup_directory
    case Darwin
end

#function osc7_prompt --on-event fish_prompt
#    wezterm set-working-directory
#end
