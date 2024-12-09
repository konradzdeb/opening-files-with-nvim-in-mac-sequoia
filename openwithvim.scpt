on run {input, parameters}
	set filename to quoted form of POSIX path of item 1 of input
	set cmd to "clear; cd `dirname " & filename & "`; nvim " & filename
	
	tell application "iTerm"
		activate
		-- Check if a window exists
		if (count of windows) = 0 then
			create window with default profile
		else
			tell the current window
				create tab with default profile
			end tell
		end if
		
		-- Write the command to the current session
		tell the current session of the current window
			write text cmd
		end tell
	end tell
end run

