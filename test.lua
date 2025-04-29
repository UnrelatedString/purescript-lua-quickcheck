-- fix for compiler typo
os.execute("sed 's/patch_v = patches/patch_v = patches[k]/' output/test.lua > output/test_.lua")
-- fix for broken eta rewrite on latest release because CI can't use the flake without timing out
os.execute("sed 's/M.Test_QuickCheck_Gen_state(M.Test_QuickCheck_Gen_runGen(f(s.size)))/M.Test_QuickCheck_Gen_state(function(s)return M.Test_QuickCheck_Gen_runGen(f(s.size))end)/' output/test_.lua > output/test__.lua")
dofile("output/test__.lua").main()
