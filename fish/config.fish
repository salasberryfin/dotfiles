if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr g git
    abbr ga 'git add'
    abbr gd 'git diff'
    abbr gcm 'git commit'
    abbr gcmm 'git commit -m'
    abbr glog 'git log'
    abbr gst 'git status'
    abbr k kubectl
    abbr kgpo 'kubectl get pods'
    abbr l 'ls -la'
    abbr v nvim
end

# TODO: Testing new settings
set -gx EDITOR nvim
set -gx VISUAL nvim

# Ensure colors are handled correctly in Tmux/Nvim
set -gx TERM xterm-256color
# TODO: End of testing new settings

set -gx PATH $PATH $HOME/.krew/bin

# Created by `pipx` on 2025-06-11 09:23:13
set PATH $PATH $HOME/.local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Downloads/google-cloud-sdk/path.fish.inc' ]
    . '$HOME/Downloads/google-cloud-sdk/path.fish.inc'
end
