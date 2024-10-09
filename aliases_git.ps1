function ga {
    git add $args
}

function gaa {
    git add -A $args
}

function gac {
    git add -A && git commit $args
}

function gaca {
    git add -A && git commit --amend $args
}

function gaca! {
    git add -A && git commit --amend --no-edit $args
}

function gb {
    git branch $args
}

Remove-Alias gc -Force -ErrorAction SilentlyContinue

function gc {
    git commit $args
}

function gca {
    git commit --amend $argv
}

function gca! {
    git commit --amend --no-edit $argv
}

Remove-Alias gcm -Force -ErrorAction SilentlyContinue

function gcm {
    git commit -m $args
}

function gg {
    git clone $args
}

function gh {
    git checkout $args
}

function ghb {
    git checkout -b $args
}

function gpu {
    git pull $args
}

function gr {
    git rebase $args
}

function gra {
    git rebase --abort $args
}

function grc {
    git rebase --continue $args
}

function gri {
    git rebase -i $args
}

function gs {
    git status
}

function gup {
    git push $args
}