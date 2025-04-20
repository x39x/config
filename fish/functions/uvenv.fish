function uvenv
        if set -q VIRTUAL_ENV
                deactivate
                set_color yellow
                echo "🐍 Deactivated virtual environment: $VIRTUAL_ENV"
                set_color normal
                return
        end

        if test (count $argv) -eq 0
                set env_path ".venv/bin/activate.fish"
                set env_name ".venv"
        else
                set env_path "$HOME/.pyVenv/$argv[1]/.venv/bin/activate.fish"
                set env_name "$HOME/.pyVenv/$argv[1]"
        end

        if test -f $env_path
                source $env_path
                set_color green
                echo "✅ Activated virtual environment: $env_name"
                set_color normal
        else
                set_color red
                echo "❌ No virtual environment found at $env_name"
                set_color normal
        end
end

