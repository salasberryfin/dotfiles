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

# Theme: gruvbox-material (dark, medium)
set -gx BAT_THEME gruvbox-dark
set -gx FZF_DEFAULT_OPTS "--color=fg:#d4be98,fg+:#ddc7a1,bg+:#32302f,hl:#7daea3,hl+:#7daea3,info:#d8a657,prompt:#d8a657,pointer:#89b482,marker:#89b482,spinner:#89b482,header:#7daea3,border:#45403d"
set -g fish_color_normal d4be98
set -g fish_color_command a9b665
set -g fish_color_keyword ea6962
set -g fish_color_param d4be98
set -g fish_color_option 89b482
set -g fish_color_quote d8a657
set -g fish_color_redirection d3869b
set -g fish_color_end e78a4e
set -g fish_color_operator e78a4e
set -g fish_color_escape d3869b
set -g fish_color_error ea6962
set -g fish_color_comment 7c6f64 --italics
set -g fish_color_autosuggestion 7c6f64
set -g fish_color_valid_path --underline
set -g fish_color_cwd 7daea3
set -g fish_color_cwd_root ea6962
set -g fish_color_user a9b665
set -g fish_color_host 89b482
set -g fish_color_selection --background=45403d
set -g fish_color_search_match --background=45403d
set -g fish_color_match --background=45403d
set -g fish_pager_color_completion d4be98
set -g fish_pager_color_description 928374 --italics
set -g fish_pager_color_prefix d8a657 --bold
set -g fish_pager_color_progress 282828 --background=d8a657
set -g fish_pager_color_selected_background --background=45403d

# TODO: End of testing new settings

set -gx PATH $PATH $HOME/.krew/bin

# Created by `pipx` on 2025-06-11 09:23:13
set PATH $PATH $HOME/.local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Downloads/google-cloud-sdk/path.fish.inc' ]
    . '$HOME/Downloads/google-cloud-sdk/path.fish.inc'
end
