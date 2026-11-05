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

# Theme: everforest (dark, medium)
# bat has no everforest theme; 'ansi' follows the terminal palette
set -gx BAT_THEME ansi
set -gx FZF_DEFAULT_OPTS "--color=fg:#d3c6aa,fg+:#d3c6aa,bg+:#343f44,hl:#7fbbb3,hl+:#7fbbb3,info:#dbbc7f,prompt:#dbbc7f,pointer:#83c092,marker:#83c092,spinner:#83c092,header:#7fbbb3,border:#475258"
set -g fish_color_normal d3c6aa
set -g fish_color_command a7c080
set -g fish_color_keyword e67e80
set -g fish_color_param d3c6aa
set -g fish_color_option 83c092
set -g fish_color_quote dbbc7f
set -g fish_color_redirection d699b6
set -g fish_color_end e69875
set -g fish_color_operator e69875
set -g fish_color_escape d699b6
set -g fish_color_error e67e80
set -g fish_color_comment 7a8478 --italics
set -g fish_color_autosuggestion 7a8478
set -g fish_color_valid_path --underline
set -g fish_color_cwd 7fbbb3
set -g fish_color_cwd_root e67e80
set -g fish_color_user a7c080
set -g fish_color_host 83c092
set -g fish_color_selection --background=475258
set -g fish_color_search_match --background=475258
set -g fish_color_match --background=475258
set -g fish_pager_color_completion d3c6aa
set -g fish_pager_color_description 859289 --italics
set -g fish_pager_color_prefix dbbc7f --bold
set -g fish_pager_color_progress 2d353b --background=dbbc7f
set -g fish_pager_color_selected_background --background=475258

# TODO: End of testing new settings

set -gx PATH $PATH $HOME/.krew/bin

# Created by `pipx` on 2025-06-11 09:23:13
set PATH $PATH $HOME/.local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Downloads/google-cloud-sdk/path.fish.inc' ]
    . '$HOME/Downloads/google-cloud-sdk/path.fish.inc'
end
