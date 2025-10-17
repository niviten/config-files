vim.api.nvim_create_user_command("CopyFilePath", function()
	local filepath = vim.fn.expand("%:p")
	if filepath == "" then
		print("No file path (buffer not associated with a file)")
		return
	end
	vim.fn.setreg("+", filepath)
	vim.fn.setreg("*", filepath) -- for Linux systems using xclip/xsel
	print("Copied: " .. filepath)
end, {})
