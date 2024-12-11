function cdl {
    Set-Location $args[0] && eza --long
}

function cdla {
    Set-Location $args[0] && eza --long --all
}

function cdlt {
    Set-Location $args[0] && eza --tree --level=2
}

function l {
    eza $args
}

function la {
    eza --long --all $args
}

function lg {
    eza --long --git --git-ignore $args
}

function lga {
    eza --long --git $args
}

function ll {
    eza --long $args
}

function lt {
    if ($args.Count -eq 0) {
        eza --tree --level=2
    } elseif ($args.Count -eq 1) {
        eza --tree --level=$args[0]
    } else {
        eza --tree --level=$args[0] $args[1..($args.Count - 1)]
    } 
}

function mkcd {
    New-Item $args[0] -ItemType Directory -ea 0 | Out-Null && Set-Location $args[0]
}
