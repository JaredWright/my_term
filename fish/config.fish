set fish_greeting 'Welcome to fish, the friendly interactive shell'
fish_vi_key_bindings

# Colorscheme (Monokai)
set fish_color_autosuggestion brblack
set fish_color_cancel -r
set fish_color_command F92672
set fish_color_comment 75715E
set fish_color_cwd 66D9EF
set fish_color_cwd_root red
set fish_color_end F8F8F2
set fish_color_error 'F8F8F2'  '--background=F92672'
set fish_color_escape 66D9EF
set fish_color_history_current --bold
set fish_color_host normal
set fish_color_match F8F8F2
set fish_color_normal F8F8F2
set fish_color_operator AE81FF
set fish_color_param A6E22E
set fish_color_quote E6DB74
set fish_color_redirection AE81FF
set fish_color_search_match --background=49483E
set fish_color_selection 'white'  '--bold'  '--background=brblack'
set fish_color_user brgreen
set fish_color_valid_path --underline
set fish_pager_color_completion 75715E
set fish_pager_color_description 49483E
set fish_pager_color_prefix F8F8F2
set fish_pager_color_progress F8F8F2

# Aliases
alias ls "colorls"
alias tree "colorls --tree"
alias top "htop"

# Glyphs
# To figure out the right encoding for a unicode character, in a terminal run:
# printf <copy_paste_the_glyph_here> | hexdump
set -g apple ""
set -g linux ""
set -g windows ""
set -g bsd ""
set -g arch ""
set -g ubuntu ""
set -g debian ""
set -g raspbian ""
set -g redhat ""
set -g fedora ""
set -g opensuse ""
set -g docker ""
set -g github ""
set -g git ""
set -g gitlab ""
set -g android ""
set -g ios ""

set -g fish "🐟"
set -g skull "☠"
set -g thumbsup ""
set -g thumbsdown ""
set -g usb ""
set -g stackoverflow ""
set -g home ""
set -g power ""
set -g vim ""
set -g fingerprint ""
