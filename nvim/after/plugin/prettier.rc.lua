local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup{
  bin = 'prettier',
  filetypes = {'css', 'javascript', 'javascriptreat', 'typescript', 'typescriptreact', 'json', 'scss', 'less'}  
}
