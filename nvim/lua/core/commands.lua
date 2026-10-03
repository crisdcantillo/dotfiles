vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    callback = function()
        vim.hl.on_yank()
    end
})

-- Find query
vim.keymap.set("n", "<leader>/", function()
  local query = vim.fn.input("Search: ")

  if query == "" then
    return
  end

  vim.cmd("grep " .. vim.fn.escape(query, " "))
  vim.cmd("copen")
end)

-- Results
vim.keymap.set("n", "]q", "<cmd>cnext<CR>")
vim.keymap.set("n", "[q", "<cmd>cprev<CR>")
