function uvenv
    if set -q VIRTUAL_ENV
        deactivate
        return
    end

    if test -f .venv/bin/activate.fish
        source .venv/bin/activate.fish
    end
end

