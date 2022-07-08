lua << EOF
for k in pairs(package.loaded) do
  if k:match(".*onedarkerdarker.*") then package.loaded[k] = nil end
end

require('onedarkerdarker').setup()
EOF
