# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/projects/octopus"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "octopus"

# Split window into panes.
split_h 25
select_pane 0
split_h 66
#split_h 50

# Run commands.
select_pane 0 
run_cmd "git log -3 --stat --oneline"
select_pane 2
run_cmd "pnpm run"
select_pane 1
run_cmd "nvim ."

#run_cmd "top"     # runs in active pane
#run_cmd "date" 1  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 1 # paste into pane 1

# Set active pane.
#select_pane 0
