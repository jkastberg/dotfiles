#############################################
# Tmux colors 
#############################################

PANE_BORDER_ACTIVE_COLOR_BG=colour234
PANE_BORDER_ACTIVE_COLOR_FG=colour136
PANE_BORDER_INACTIVE_COLOR_BG=colour234
PANE_BORDER_INACTIVE_COLOR_FG=colour238

WINDOW_ACTIVE_COLOR_BG=colour235
WINDOW_ACTIVE_COLOR_FG=colour250
WINDOW_INACTIVE_COLOR_BG=colour234
WINDOW_INACTIVE_COLOR_FG=colour242

STATUSBAR_COLOR_BG=colour235
STATUSBAR_COLOR_FG=colour136
STATUSBAR_ACTIVE_WINDOW_COLOR_BG=colour136
STATUSBAR_ACTIVE_WINDOW_COLOR_FG=colour235
STATUSBAR_INACTIVE_WINDOWS_COLOR_BG=colour235
STATUSBAR_INACTIVE_WINDOWS_COLOR_FG=colour136

CLOCK_COLOR=colour6

MESSAGE_COLOR_BG=colour17
MESSAGE_COLOR_FG=colour255


#############################################
# Powerline configuration
#############################################
# Documention: https://github.com/erikw/tmux-powerline

TMUX_POWERLINE_SEPARATOR_LEFT_BOLD=""
TMUX_POWERLINE_SEPARATOR_LEFT_THIN=""
TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD=""
TMUX_POWERLINE_SEPARATOR_RIGHT_THIN=""

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR='235' # Preferably the same as STATUSBAR_COLOR_BG
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR='255'

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}


# Format: segment_name background_color foreground_color [non_default_separator]

# Left segments
TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
  #"tmux_session_info 148 234" \
  "hostname 5 15" \
  "pwd 89 211" \
  "vcs_branch 9 0" \
  "vcs_compare 60 255" \
  "vcs_staged 64 255" \
  "vcs_modified 9 255" \
  "vcs_others 245 0" \
)

# Right segments  
TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
  #"now_playing 234 37" \
  "date_day 235 136" \
  "date 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
  "time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
)

# Available segments:
  #"tmux_session_info 148 234" \
  #"hostname 5 15" \
  #"ifstat 30 255" \
  #"ifstat_sys 30 255" \
  #"lan_ip 24 255 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
  #"wan_ip 24 255" \
  #"pwd 89 211" \
  #"vcs_branch 9 0" \
  #"vcs_compare 60 255" \
  #"vcs_staged 64 255" \
  #"vcs_modified 9 255" \
  #"vcs_others 245 0" \
  #"earthquake 3 0" \
  #"macos_notification_count 29 255" \
  #"mailcount 9 255" \
  #"now_playing 234 37" \
  #"cpu 240 136" \
  #"load 237 167" \
  #"tmux_mem_cpu_load 234 136" \
  #"battery 137 127" \
  #"weather 37 255" \
  #"rainbarf 0 ${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR}" \
  #"xkb_layout 125 117" \
  #"date_day 235 136" \
  #"date 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
  #"time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
  #"utc_time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \

