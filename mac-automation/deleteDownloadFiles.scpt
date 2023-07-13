tell application "Finder"
	set downloadsFolder to path to downloads folder as string
	set cutoffDate to (current date) - (30 * days) -- Change "30" to the number of days you want to set as the cutoff
	
	set fileList to every file of folder downloadsFolder
	repeat with aFile in fileList
		set fileDate to (creation date of (info for aFile))
		if fileDate < cutoffDate then
			delete aFile
		end if
	end repeat
end tell
