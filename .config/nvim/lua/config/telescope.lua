vim.cmd([[
  nnoremap <leader>ff <cmd>Telescope find_files<cr>
  nnoremap <leader>fg <cmd>Telescope live_grep<cr>
  nnoremap <leader>bb <cmd>Telescope buffers<cr>
  nnoremap <leader>fh <cmd>Telescope help_tags<cr>
  nnoremap <leader>fr <cmd>Telescope oldfiles<cr>
  nnoremap <leader>fb <cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>
]])
