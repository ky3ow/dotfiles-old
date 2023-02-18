if status is-interactive

    export O='origin'
    export B="$(git branch --show-current | cat)"
    export H='HEAD'

   function git --wraps git
    if pwd -P | grep -q "^\/mnt\/c\/*"
      git.exe $argv
    else
      command git $argv
    end
   end

    function checkout -w "git checkout"
        git checkout $argv[1] && gbcurr && ff
    end

    alias src='source ~/.config/fish/config.fish'

    alias gc='git commit'
    alias gupd='git commit --amend --no-edit'
    alias gund='git reset --hard'

    alias gco='checkout $argv'

    alias ga='git add .'

    alias gst='git status'

    alias gf='git fetch $argv[1]'
    alias gpr='git remote prune $O'
    alias ff='gpr && git pull --ff-only'

    alias grh='git reset --hard $argv'
    alias grs='git reset --soft $argv'

    alias gcp='git cherry-pick $argv'
    alias gcpc='gcp --continue'
    alias gcpa='gcp --abort'

    alias gre='git rebase $argv'
    alias grec='gre --continue'
    alias grea='gre --abort'

    alias gm='git merge $argv'

    alias gmr='git push -u origin HEAD'

    alias gbc='git branch --show-current | pbcopy'
    alias gbcurr='export B="$(git branch --show-current | cat)"'

    function nvm
        bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
    end

    nvm use node

    function starship_transient_prompt_func
        starship module character
    end
    starship init fish | source
    enable_transience
end

export EDITOR=nvim
export VISUAL=nvim