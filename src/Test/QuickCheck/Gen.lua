return {
  float32ToInt32 = (function(n)
    -- Going to assume Int and Number are Lua-sized? whatever shouldn't matter much
    -- thanks to n_n for telling me this exists!!!!!!!
    local packed = string.pack("n", n)
    local unpacked = string.unpack("i", packed)
    return unpacked
  ),
}
