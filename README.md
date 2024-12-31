# Installation

1. Open Automator
2. Choose "New Document"
3. Locate "Run AppleScript" and double-click it
4. Paste the AppleScript code into the box
5. Save as `/Applications/OpenInNvim.app`
6. In Finder, select some file you want to open in Vim, e.g. a .rb file.
7. Hit ⌘I to open the _“Get Info”_ window.
8. Under _“Open with:”_, choose `OpenInNvim.app`. You may need to select _“Other…”_ and then browse.
9. Hit the _“Change All…”_ button and confirm.

## Optional: Automatically Refresh Permissions

1. Edit `.dutirc` file adding relevant extensions to the list
2. Copy `run_duti.sh` to the desired location.
3. run `chmod +x run_duti.sh` to ensure that `run_duti.sh` is executable
4. Edit path within the `com.user.dutirefresh.plist` to point to the `run_duti.sh` script. This will ensure permission refresh on startup.
