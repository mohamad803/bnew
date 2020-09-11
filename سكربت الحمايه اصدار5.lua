






if _G["debug"]["getinfo"](gg.alert).source == "=[Java]" then
else
i = 1
gg.alert("Auto Decompiler Detected", "")
gg.setVisible(false)
while true do
i = i + 1
gg.toast("Log Has Been Detected")
file = io.open("/storage/emulated/0/Download/" .. i, "w")
file:write("Script is protected by DYNAMIC BROS.")
file:close()
--os.remove("/storage/emulated/0/Android/data/com.tencent.ig")
gg.setVisible(false)
gg.alert("Auto Decompiler Detected", "")
gg.processKill()
gg.setVisible(true)
end
return
end
save = {}
for _FORV_27_ = 1,  50000 do
table.insert(save, {
["address"] = 0 + _FORV_27_,
["flags"] = 12
})
end
time = _G["os"]["clock"]()
for _FORV_27_ = 1, 5 do
_G["gg"]["addListItems"](save)
end
if 2 <= _G["os"]["clock"]() - time then
_G["gg"]["removeListItems"](save)
i = 1
gg.alert("Auto Decompiler Detected", "")
gg.setVisible(false)
while true do
i = i + 1
gg.toast("Log Has Been Detected :P")
file = io.open("/storage/emulated/0/Download/" .. i, "w")
file:write("Script is protected by DYNAMIC BROS.")
file:close()
gg.setVisible(false)
gg.alert("Auto Decompiler Detected", "")
gg.processKill()
gg.setVisible(true)
end
return
end
_G["gg"]["removeListItems"](save)
function PQ(code) for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end
function TG() local NN = {} local N = {} N.N = {} N.N.NN = N.data() N.N.NNN = N.N.NN.data() N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G] end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  =_():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end 
if not loadfile(gg.getFile()) then gg.alert("Stop Using Compiler!") return end
if gg.isPackageInstalled("com.sstool.only.sstool") then return end

--sstool Crash and Block Load--
function DN()while(nil)do;local ii={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i(iiiii[i]) do;local i={}i.i={}i.i.ii=i.data()i.i.iii=i.i.ii.data()i.iii=ii.i(iiiii[i.i.i.i.i])i.iii=i.iii:i(iiiii[i.i.i.i.i])i.i[i]=i[i];if(ii.i)then;ii.i=ii.i()end;for i=1,5 do;load("local DN = gg.EXT_CACHE_DIR..gg.getFile()")()end;return;end;end;end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end


for i in ipairs({}) do
local sssss = {}
if sssss ~= nil then
sssss.fckyou = sssss.noob()
end
sssss = nil
end

-- Simple block sstool and unluac --
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end

-- Super Block sstool Test --
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end














--base64

local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' -- You will need this for encoding/decoding
-- encoding
function enc(data)
  return ((data:gsub('.', function(x) 
      local r,b='',x:byte()
      for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
      return r;
  end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
      if (#x < 6) then return '' end
      local c=0
      for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
      return b:sub(c+1,c+1)
  end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function dec(data)
  data = string.gsub(data, '[^'..b..'=]', '')
  return (data:gsub('.', function(x)
      if (x == '=') then return '' end
      local r,f='',(b:find(x)-1)
      for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
      return r;
  end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
      if (#x ~= 8) then return '' end
      local c=0
      for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
          return string.char(c)
  end))
end

--base64



--md5

local md5 = {
_VERSION     = "md5.lua 1.1.0",
_DESCRIPTION = "MD5 computation in Lua (5.1-3, LuaJIT)",
_URL         = "https://github.com/kikito/md5.lua",
_LICENSE     = [[
  
]]
}
-- bit lib implementions

local char, byte, format, rep, sub = string.char, string.byte, string.format, string.rep, string.sub
local bit_or, bit_and, bit_not, bit_xor, bit_rshift, bit_lshift

local ok, bit = pcall(require, 'bit')
if ok then
bit_or, bit_and, bit_not, bit_xor, bit_rshift, bit_lshift = bit.bor, bit.band, bit.bnot, bit.bxor, bit.rshift, bit.lshift
else
ok, bit = pcall(require, 'bit32')

if ok then

  bit_not = bit.bnot

  local tobit = function(n)
    return n <= 0x7fffffff and n or -(bit_not(n) + 1)
  end

  local normalize = function(f)
    return function(a,b) return tobit(f(tobit(a), tobit(b))) end
  end

  bit_or, bit_and, bit_xor = normalize(bit.bor), normalize(bit.band), normalize(bit.bxor)
  bit_rshift, bit_lshift = normalize(bit.rshift), normalize(bit.lshift)

else

  local function tbl2number(tbl)
    local result = 0
    local power = 1
    for i = 1, #tbl do
      result = result + tbl[i] * power
      power = power * 2
    end
    return result
  end

  local function expand(t1, t2)
    local big, small = t1, t2
    if(#big < #small) then
      big, small = small, big
    end
    -- expand small
    for i = #small + 1, #big do
      small[i] = 0
    end
  end

  local to_bits -- needs to be declared before bit_not

  bit_not = function(n)
    local tbl = to_bits(n)
    local size = math.max(#tbl, 32)
    for i = 1, size do
      if(tbl[i] == 1) then
        tbl[i] = 0
      else
        tbl[i] = 1
      end
    end
    return tbl2number(tbl)
  end

  -- defined as local above
  to_bits = function (n)
    if(n < 0) then
      -- negative
      return to_bits(bit_not(math.abs(n)) + 1)
    end
    -- to bits table
    local tbl = {}
    local cnt = 1
    local last
    while n > 0 do
      last      = n % 2
      tbl[cnt]  = last
      n         = (n-last)/2
      cnt       = cnt + 1
    end

    return tbl
  end

  bit_or = function(m, n)
    local tbl_m = to_bits(m)
    local tbl_n = to_bits(n)
    expand(tbl_m, tbl_n)

    local tbl = {}
    for i = 1, #tbl_m do
      if(tbl_m[i]== 0 and tbl_n[i] == 0) then
        tbl[i] = 0
      else
        tbl[i] = 1
      end
    end

    return tbl2number(tbl)
  end

  bit_and = function(m, n)
    local tbl_m = to_bits(m)
    local tbl_n = to_bits(n)
    expand(tbl_m, tbl_n)

    local tbl = {}
    for i = 1, #tbl_m do
      if(tbl_m[i]== 0 or tbl_n[i] == 0) then
        tbl[i] = 0
      else
        tbl[i] = 1
      end
    end

    return tbl2number(tbl)
  end

  bit_xor = function(m, n)
    local tbl_m = to_bits(m)
    local tbl_n = to_bits(n)
    expand(tbl_m, tbl_n)

    local tbl = {}
    for i = 1, #tbl_m do
      if(tbl_m[i] ~= tbl_n[i]) then
        tbl[i] = 1
      else
        tbl[i] = 0
      end
    end

    return tbl2number(tbl)
  end

  bit_rshift = function(n, bits)
    local high_bit = 0
    if(n < 0) then
      -- negative
      n = bit_not(math.abs(n)) + 1
      high_bit = 0x80000000
    end

    local floor = math.floor

    for i=1, bits do
      n = n/2
      n = bit_or(floor(n), high_bit)
    end
    return floor(n)
  end

  bit_lshift = function(n, bits)
    if(n < 0) then
      -- negative
      n = bit_not(math.abs(n)) + 1
    end

    for i=1, bits do
      n = n*2
    end
    return bit_and(n, 0xFFFFFFFF)
  end
end
end

-- convert little-endian 32-bit int to a 4-char string
local function lei2str(i)
local f=function (s) return char( bit_and( bit_rshift(i, s), 255)) end
return f(0)..f(8)..f(16)..f(24)
end

-- convert raw string to big-endian int
local function str2bei(s)
local v=0
for i=1, #s do
  v = v * 256 + byte(s, i)
end
return v
end

-- convert raw string to little-endian int
local function str2lei(s)
local v=0
for i = #s,1,-1 do
  v = v*256 + byte(s, i)
end
return v
end

-- cut up a string in little-endian ints of given size
local function cut_le_str(s,...)
local o, r = 1, {}
local args = {...}
for i=1, #args do
  table.insert(r, str2lei(sub(s, o, o + args[i] - 1)))
  o = o + args[i]
end
return r
end

local swap = function (w) return str2bei(lei2str(w)) end

-- An MD5 mplementation in Lua, requires bitlib (hacked to use LuaBit from above, ugh)
-- 10/02/2001 jcw@equi4.com

local CONSTS = { 0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee, 0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501, 0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be, 0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821, 0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa, 0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8, 0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed, 0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a, 0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c, 0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70, 0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05, 0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665, 0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039, 0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1, 0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1, 0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391, 0x67452301, 0xefcdab89, 0x98badcfe, 0x10325476 , }

local FfFf=function (x,y,z) return bit_or(bit_and(x,y),bit_and(-x-1,z)) end
local gGgGgG=function (x,y,z) return bit_or(bit_and(x,z),bit_and(y,-z-1)) end
local HhHhHh=function (x,y,z) return bit_xor(x,bit_xor(y,z)) end
local iIiIii=function (x,y,z) return bit_xor(y,bit_or(x,-z-1)) end

local ZZXZZ=function (ff,a,b,c,d,x,s,ac)
a=bit_and(a+ff(b,c,d)+x+ac,0xFFFFFFFF)
-- be *very* careful that left shift does not cause rounding!
return bit_or(bit_lshift(bit_and(a,bit_rshift(0xFFFFFFFF,s)),s),bit_rshift(a,32-s))+b
end

local function transform(A,B,C,D,X)
local AAAa,BBBb,CCCc,DDDd=A,B,C,D
local t=CONSTS

AAAa=ZZXZZ(FfFf,AAAa,BBBb,CCCc,DDDd,X[ 0], 7,t[ 1])
DDDd=ZZXZZ(FfFf,DDDd,AAAa,BBBb,CCCc,X[ 1],12,t[ 2])
CCCc=ZZXZZ(FfFf,CCCc,DDDd,AAAa,BBBb,X[ 2],17,t[ 3])
BBBb=ZZXZZ(FfFf,BBBb,CCCc,DDDd,AAAa,X[ 3],22,t[ 4])
AAAa=ZZXZZ(FfFf,AAAa,BBBb,CCCc,DDDd,X[ 4], 7,t[ 5])
DDDd=ZZXZZ(FfFf,DDDd,AAAa,BBBb,CCCc,X[ 5],12,t[ 6])
CCCc=ZZXZZ(FfFf,CCCc,DDDd,AAAa,BBBb,X[ 6],17,t[ 7])
BBBb=ZZXZZ(FfFf,BBBb,CCCc,DDDd,AAAa,X[ 7],22,t[ 8])
AAAa=ZZXZZ(FfFf,AAAa,BBBb,CCCc,DDDd,X[ 8], 7,t[ 9])
DDDd=ZZXZZ(FfFf,DDDd,AAAa,BBBb,CCCc,X[ 9],12,t[10])
CCCc=ZZXZZ(FfFf,CCCc,DDDd,AAAa,BBBb,X[10],17,t[11])
BBBb=ZZXZZ(FfFf,BBBb,CCCc,DDDd,AAAa,X[11],22,t[12])
AAAa=ZZXZZ(FfFf,AAAa,BBBb,CCCc,DDDd,X[12], 7,t[13])
DDDd=ZZXZZ(FfFf,DDDd,AAAa,BBBb,CCCc,X[13],12,t[14])
CCCc=ZZXZZ(FfFf,CCCc,DDDd,AAAa,BBBb,X[14],17,t[15])
BBBb=ZZXZZ(FfFf,BBBb,CCCc,DDDd,AAAa,X[15],22,t[16])

AAAa=ZZXZZ(gGgGgG,AAAa,BBBb,CCCc,DDDd,X[ 1], 5,t[17])
DDDd=ZZXZZ(gGgGgG,DDDd,AAAa,BBBb,CCCc,X[ 6], 9,t[18])
CCCc=ZZXZZ(gGgGgG,CCCc,DDDd,AAAa,BBBb,X[11],14,t[19])
BBBb=ZZXZZ(gGgGgG,BBBb,CCCc,DDDd,AAAa,X[ 0],20,t[20])
AAAa=ZZXZZ(gGgGgG,AAAa,BBBb,CCCc,DDDd,X[ 5], 5,t[21])
DDDd=ZZXZZ(gGgGgG,DDDd,AAAa,BBBb,CCCc,X[10], 9,t[22])
CCCc=ZZXZZ(gGgGgG,CCCc,DDDd,AAAa,BBBb,X[15],14,t[23])
BBBb=ZZXZZ(gGgGgG,BBBb,CCCc,DDDd,AAAa,X[ 4],20,t[24])
AAAa=ZZXZZ(gGgGgG,AAAa,BBBb,CCCc,DDDd,X[ 9], 5,t[25])
DDDd=ZZXZZ(gGgGgG,DDDd,AAAa,BBBb,CCCc,X[14], 9,t[26])
CCCc=ZZXZZ(gGgGgG,CCCc,DDDd,AAAa,BBBb,X[ 3],14,t[27])
BBBb=ZZXZZ(gGgGgG,BBBb,CCCc,DDDd,AAAa,X[ 8],20,t[28])
AAAa=ZZXZZ(gGgGgG,AAAa,BBBb,CCCc,DDDd,X[13], 5,t[29])
DDDd=ZZXZZ(gGgGgG,DDDd,AAAa,BBBb,CCCc,X[ 2], 9,t[30])
CCCc=ZZXZZ(gGgGgG,CCCc,DDDd,AAAa,BBBb,X[ 7],14,t[31])
BBBb=ZZXZZ(gGgGgG,BBBb,CCCc,DDDd,AAAa,X[12],20,t[32])

AAAa=ZZXZZ(HhHhHh,AAAa,BBBb,CCCc,DDDd,X[ 5], 4,t[33])
DDDd=ZZXZZ(HhHhHh,DDDd,AAAa,BBBb,CCCc,X[ 8],11,t[34])
CCCc=ZZXZZ(HhHhHh,CCCc,DDDd,AAAa,BBBb,X[11],16,t[35])
BBBb=ZZXZZ(HhHhHh,BBBb,CCCc,DDDd,AAAa,X[14],23,t[36])
AAAa=ZZXZZ(HhHhHh,AAAa,BBBb,CCCc,DDDd,X[ 1], 4,t[37])
DDDd=ZZXZZ(HhHhHh,DDDd,AAAa,BBBb,CCCc,X[ 4],11,t[38])
CCCc=ZZXZZ(HhHhHh,CCCc,DDDd,AAAa,BBBb,X[ 7],16,t[39])
BBBb=ZZXZZ(HhHhHh,BBBb,CCCc,DDDd,AAAa,X[10],23,t[40])
AAAa=ZZXZZ(HhHhHh,AAAa,BBBb,CCCc,DDDd,X[13], 4,t[41])
DDDd=ZZXZZ(HhHhHh,DDDd,AAAa,BBBb,CCCc,X[ 0],11,t[42])
CCCc=ZZXZZ(HhHhHh,CCCc,DDDd,AAAa,BBBb,X[ 3],16,t[43])
BBBb=ZZXZZ(HhHhHh,BBBb,CCCc,DDDd,AAAa,X[ 6],23,t[44])
AAAa=ZZXZZ(HhHhHh,AAAa,BBBb,CCCc,DDDd,X[ 9], 4,t[45])
DDDd=ZZXZZ(HhHhHh,DDDd,AAAa,BBBb,CCCc,X[12],11,t[46])
CCCc=ZZXZZ(HhHhHh,CCCc,DDDd,AAAa,BBBb,X[15],16,t[47])
BBBb=ZZXZZ(HhHhHh,BBBb,CCCc,DDDd,AAAa,X[ 2],23,t[48])

AAAa=ZZXZZ(iIiIii,AAAa,BBBb,CCCc,DDDd,X[ 0], 6,t[49])
DDDd=ZZXZZ(iIiIii,DDDd,AAAa,BBBb,CCCc,X[ 7],10,t[50])
CCCc=ZZXZZ(iIiIii,CCCc,DDDd,AAAa,BBBb,X[14],15,t[51])
BBBb=ZZXZZ(iIiIii,BBBb,CCCc,DDDd,AAAa,X[ 5],21,t[52])
AAAa=ZZXZZ(iIiIii,AAAa,BBBb,CCCc,DDDd,X[12], 6,t[53])
DDDd=ZZXZZ(iIiIii,DDDd,AAAa,BBBb,CCCc,X[ 3],10,t[54])
CCCc=ZZXZZ(iIiIii,CCCc,DDDd,AAAa,BBBb,X[10],15,t[55])
BBBb=ZZXZZ(iIiIii,BBBb,CCCc,DDDd,AAAa,X[ 1],21,t[56])
AAAa=ZZXZZ(iIiIii,AAAa,BBBb,CCCc,DDDd,X[ 8], 6,t[57])
DDDd=ZZXZZ(iIiIii,DDDd,AAAa,BBBb,CCCc,X[15],10,t[58])
CCCc=ZZXZZ(iIiIii,CCCc,DDDd,AAAa,BBBb,X[ 6],15,t[59])
BBBb=ZZXZZ(iIiIii,BBBb,CCCc,DDDd,AAAa,X[13],21,t[60])
AAAa=ZZXZZ(iIiIii,AAAa,BBBb,CCCc,DDDd,X[ 4], 6,t[61])
DDDd=ZZXZZ(iIiIii,DDDd,AAAa,BBBb,CCCc,X[11],10,t[62])
CCCc=ZZXZZ(iIiIii,CCCc,DDDd,AAAa,BBBb,X[ 2],15,t[63])
BBBb=ZZXZZ(iIiIii,BBBb,CCCc,DDDd,AAAa,X[ 9],21,t[64])

return bit_and(A+AAAa,0xFFFFFFFF),bit_and(B+BBBb,0xFFFFFFFF),
       bit_and(C+CCCc,0xFFFFFFFF),bit_and(D+DDDd,0xFFFFFFFF)
end

----------------------------------------------------------------

local function md5_update(self, s)
self.pos = self.pos + #s
s = self.buf .. s
for ii = 1, #s - 63, 64 do
  local X = cut_le_str(sub(s,ii,ii+63),4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4)
  assert(#X == 16)
  X[0] = table.remove(X,1) -- zero based!
  self.a,self.b,self.c,self.d = transform(self.a,self.b,self.c,self.d,X)
end
self.buf = sub(s, math.floor(#s/64)*64 + 1, #s)
return self
end

local function md5_finish(self)
local msgLen = self.pos
local padLen = 56 - msgLen % 64

if msgLen % 64 > 56 then padLen = padLen + 64 end

if padLen == 0 then padLen = 64 end

local s = char(128) .. rep(char(0),padLen-1) .. lei2str(bit_and(8*msgLen, 0xFFFFFFFF)) .. lei2str(math.floor(msgLen/0x20000000))
md5_update(self, s)

assert(self.pos % 64 == 0)
return lei2str(self.a) .. lei2str(self.b) .. lei2str(self.c) .. lei2str(self.d)
end

----------------------------------------------------------------

function md5.new()
return { a = CONSTS[65], b = CONSTS[66], c = CONSTS[67], d = CONSTS[68],
         pos = 0,
         buf = '',
         update = md5_update,
         finish = md5_finish }
end

function md5.tohex(s)
return format("%08x%08x%08x%08x", str2bei(sub(s, 1, 4)), str2bei(sub(s, 5, 8)), str2bei(sub(s, 9, 12)), str2bei(sub(s, 13, 16)))
end

function md5.sum(s)
return md5.new():update(s):finish()
end

function md5.sumhexa(s)
return md5.tohex(md5.sum(s))
end

--return md5


--md5

-- -- -- -- -- -- -- -- -- --Check Files-- -- -- -- -- -- -- -- -- --

DATA = io.open("/storage/emulated/0/Android/data/cobra/facr.dat", "rb")
DATATWO = io.open("/storage/emulated/0/Android/data/cobra/in.dat", "rb")

if DATA==nil or DATATWO==nil then
gg.alert("Please Start The Antiban First ❗\n\nلفتح السكربت قم بتشغيل الحماية اولاً ❗")
os.exit()
end

local PKGNAME = DATA:read()
local ANDID = DATATWO:read()


-- -- -- -- -- -- -- -- -- --Check Package-- -- -- -- -- -- -- -- -- -- --
First = gg.isPackageInstalled("me.jagar.cobra") if First == false then gg.alert("السكربت خاص لمشتركيين الافضل ") os.exit() end

-- -- -- -- -- -- -- -- -- --Check open-- -- -- -- -- -- -- -- -- -- --
-- -- -- -- -- -- -- -- - -- -- -- --- -- -- -- -- --Check open-- -- -- -- --  -- -- -- -- -- -- -- ---- -- -- -- -- --
if gg.isPackageInstalled("me.jagar.crazygamingusers") then
  print(" الرجاء حذف تطبيق كاسبر  ")
  os.exit()
end
if gg.isPackageInstalled("com.senior.antiban") then
  print(" الرجاء حذف تطبيق سنيور  ")
  os.exit()
end
if gg.isPackageInstalled("com.gxlkj.tl") then
  print("🇸🇾 تم مسح ملفات النظام 🇸🇾")
  os.exit()
end
if gg.isPackageInstalled("GG.FAHED") then
  print("🇸🇾FAHED امسح جيم قاردن 🇸🇾")
  os.exit()
end
if gg.isPackageInstalled("com.huotarfcz") then
    print("🇸🇾سنيور امسح جيم قاردن 🇸🇾")
    os.exit()
  end
  if gg.isPackageInstalled("com.pyxmyf") then
    print("🇸🇾سنيور امسح جيم قاردن 🇸🇾")
    os.exit()
  end
if gg.isPackageInstalled("sstool.only.com.sstool") then
  print("🇸🇾 تم مسح ملفات النظام  🇸🇾")
  os.exit()
end
if _G["gg"]["isPackageInstalled"]("com.s.fyojrme") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if gg.isPackageInstalled("com.lzbqzotium.akywnwx") then
    print("🇸🇾سنيور امسح جيم قاردن 🇸🇾")
    os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.Fahad") then
    print("🇸🇾 امسح قيم قاردنFahad 🇸🇾")
    os.exit()
    end
  if _G["gg"]["isPackageInstalled"]("com.rjvsbmhdspmnfbame") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.redwolfgaming.ripgg") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.hook") then
    print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
    os.exit()
    end
  if _G["gg"]["isPackageInstalled"]("com.vrexqfftfsxekm.kl") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.nochqxpucsbldqqx") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.ghueczxrttlhgd") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.yy.qptvrjwerw.ghoex") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.nochqxpucsbldqqx") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.pvt4u") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.Egypt.yuosseef") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.tssfjipkmrco") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.vip.paidhacksonly.mr.toxin") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.ioyysvgfsriht") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.mrteamz.id") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.jtbodgpqxox") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.eidymumcghpfeeeavps") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.mod.iraq") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.dzelttwyuyyes") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.sxqa") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.xyyxgxfn") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.zgb") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.tssfjipkmrco") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("off.ano.rcg") then
    print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
    os.exit()
    end
  if _G["gg"]["isPackageInstalled"]("com.vnpqk") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.mwjvnwesbghkxbjznbwo") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.blackduty.gc") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.s.fyojrme") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.roxzyt") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.fhshwhpvqvruvjtu") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.fireongaming.fog") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.paranoiaworks.unicus.android.sse") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.raincitygaming.ggmod") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.pvt4u") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.nydpvsb.z.r.pkgh") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.ioyysvgfsriht") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.gmsm") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.sudsjcqvvcmgutdjeg") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.redwolfgaming.ripgg") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.coolfoolggfuckscript.tm") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.eidymumcghpfeeeavps") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.dzelttwyuyyes") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.foxcyber.gg") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.sxqa") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end
  if _G["gg"]["isPackageInstalled"]("com.zgb") then
  print("🇸🇾 Please Uninstall Deceypt GG Mod 🇸🇾")
  os.exit()
  end

  gg.alert('╔═════════════════════════╗\n  ⚠️لا تنسى حمايه الوبي ⚠️ \n  🇸🇾Telegram : @mohamadalkhous \n╚═════════════════════════╝ ', 'حسنا ➡️', "")
 function HOME()
    BEST=gg.multiChoice({
      "⁦🇸🇾⚠️حمايه لوبي عالميه1⚠️🇦🇪",
      "⁦🇸🇾⚠️ حماية لوبي عالمية 2⚠️🇦🇪",
      "⁦🇸🇾⚠️ حماية لوبي عالمية 3⚠️🇦🇪",
      "⁦🇸🇾⚠️ حماية لوبي كورية  1⚠️🇦🇪",
      "⁦🇸🇾⚠️ حماية لوبي كورية 2⚠️🇦🇪",
      "⁦🇸🇾⚠️ حماية لوبي فيتنامية 1⚠️🇦🇪",
      "⁦🇸🇾⚠️ حماية لوبي فيتنامية 2⚠️🇦🇪",
      "⁦🇸🇾⚠️ حماية لوبي جميع السيرفرات ",
      "⁦🇸🇾     🚪   خروج   🚪     🇦🇪",
}, nil, '╔═════════════════════════╗\n BestMobiles الافضل للهواتف🇸🇾 \n  🇸🇾Telegram : @mohamadalkhous 🥇\n╚═════════════════════════╝ ')
   if BEST ==nil then else 
   if BEST[1]  == true then server1()end--ok
   if BEST[2]  == true then server2() end--ok
   if BEST[3]  == true then server3() end--ok
   if BEST[4]  == true then serverko1() end--ok
   if BEST[5]  == true then serverko2() end--ok
   if BEST[6]  == true then servervt1() end
   if BEST[7]  == true then serverpro() end
   if BEST[8]  == true then serverpro2() end
   if BEST[9]  == true then EXIT0() end
   end
     PUBGMH = -1
   end

   

   Fail = "FAILED"
   Active = "SUCCESS"
-- -- -- -- -- -- -- -- -- --GLOBEL1-- -- -- -- -- -- -- -- -- --
function server1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC) 
  gg.searchNumber("2.2IIIIII95IIIIIIII88IIIIII74e-41;1638IIII4D;16384ID;16384IIIID;16IIIIIIIIIIII384D;1IIIIIIII6384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
  if gg.getResultCount() == 0 then 
  gg.alert("خطا لم يتم التفعيل❌❌ حمل لعبة من تلغرام الافضل ❌❌") 
  else 
  gg.searchNumber("2.IIIIIIIIIII29588IIIIIIIIIIIIII74e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  resultsCount = gg.getResultCount()
  results = gg.getResults(resultsCount)
  for i = 1, resultsCount do
  gg.addListItems({
  [1] = {
  address = results[i].address - 252,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address - 236,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address - 232,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address - 72,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address - 68,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address - 64,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 30,
  flags = 4,
  freeze = true,
  value = 119
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 48,
  flags = 4,
  freeze = true,
  value = 119
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 64,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 68,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 100,
  flags = 4,
  freeze = true,
  value = 4451
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 130,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 180,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 200,
  flags = 4,
  freeze = true,
  value = 4451
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 300,
  flags = 4,
  freeze = true,
  value = 0
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 310,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 360,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 450,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 512,
  flags = 4,
  freeze = true,
  value = 0
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 540,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 544,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 548,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 650,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  gg.addListItems({
  [1] = {
  address = results[i].address + 800,
  flags = 4,
  freeze = true,
  value = -1
  }
  })
  end
  gg.clearResults()
  gg.alert("💯💯الأفضل كسر الحمايه ")
  local t = gg.getListItems()
  gg.removeListItems(t)
  gg.clearResults()
  end
  end

 -- -- -- -- -- -- -- -- -- --GLOBEL2-- -- -- -- -- -- -- -- -- --
    function server2()
      gg.clearResults()
      gg.setRanges(gg.REGION_C_ALLOC) 
      gg.searchNumber("2.2IIIIII95IIIIIIII88IIIIII74e-41;1638IIII4D;16384ID;16384IIIID;16IIIIIIIIIIII384D;1IIIIIIII6384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
      if gg.getResultCount() == 0 then 
      gg.alert("خطا لم يتم التفعيل❌❌ حمل لعبة من تلغرام الافضل ❌❌") 
      else 
      gg.searchNumber("2.IIIIIIIIIII29588IIIIIIIIIIIIII74e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      resultsCount = gg.getResultCount()
      results = gg.getResults(resultsCount)
      for i = 1, resultsCount do
      gg.addListItems({
      [1] = {
      address = results[i].address - 252,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address - 236,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address - 232,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address - 72,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address - 68,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address - 64,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 30,
      flags = 4,
      freeze = true,
      value = 119
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 48,
      flags = 4,
      freeze = true,
      value = 119
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 64,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 68,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 100,
      flags = 4,
      freeze = true,
      value = 4451
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 130,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 180,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 200,
      flags = 4,
      freeze = true,
      value = 4451
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 300,
      flags = 4,
      freeze = true,
      value = 0
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 310,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 360,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 450,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 512,
      flags = 4,
      freeze = true,
      value = 0
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 540,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 544,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 548,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 650,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      gg.addListItems({
      [1] = {
      address = results[i].address + 800,
      flags = 4,
      freeze = true,
      value = -1
      }
      })
      end
      gg.clearResults()
      gg.alert("💯💯الأفضل كسر الحمايه ")
      local t = gg.getListItems()
      gg.removeListItems(t)
      gg.clearResults()
      end
      end
     


-- -- -- -- -- -- -- -- -- --GLOBEL13-- -- -- -- -- -- -- -- -- --
  function server3()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC) 
    gg.searchNumber("2.2IIIIII95IIIIIIII88IIIIII74e-41;1638IIII4D;16384ID;16384IIIID;16IIIIIIIIIIII384D;1IIIIIIII6384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
    if gg.getResultCount() == 0 then 
    gg.alert("خطا لم يتم التفعيل❌❌ حمل لعبة من تلغرام الافضل ❌❌") 
    else 
    gg.searchNumber("2.IIIIIIIIIII29588IIIIIIIIIIIIII74e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    resultsCount = gg.getResultCount()
    results = gg.getResults(resultsCount)
    for i = 1, resultsCount do
    gg.addListItems({[1] = {address = results[i].address - 252,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 236,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 232,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 72,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 68,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 64,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 119}})
    gg.addListItems({[1] = {address = results[i].address + 64,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 68,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4451}})
    gg.addListItems({[1] = {address = results[i].address + 512,flags = 4,freeze = true,value = 0}})
    gg.addListItems({[1] = {address = results[i].address + 540,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 544,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 548,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 252,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 236,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 232,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 72,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 68,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 64,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 119}})
    gg.addListItems({[1] = {address = results[i].address + 64,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 68,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4451}})
    gg.addListItems({[1] = {address = results[i].address + 512,flags = 4,freeze = true,value = 0}})
    gg.addListItems({[1] = {address = results[i].address + 540,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 544,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 548,flags = 4,freeze = true,value = -1}})
    end
    gg.clearResults()
    gg.alert("💯💯الأفضل كسر الحمايه ")
    local t = gg.getListItems()
    gg.removeListItems(t)
    gg.clearResults()
    end
    end

 -- -- -- -- -- -- -- -- -- --KOREA1-- -- -- -- -- -- -- -- -- --
  function serverko1()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC) 
    gg.searchNumber("2.2IIIIII95IIIIIIII88IIIIII74e-41;1638IIII4D;16384ID;16384IIIID;16IIIIIIIIIIII384D;1IIIIIIII6384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1) 
    if gg.getResultCount() == 0 then 
    gg.alert("خطا لم يتم التفعيل❌❌ حمل لعبة من تلغرام الافضل ❌❌") 
    else 
    gg.searchNumber("2.IIIIIIIIIII29588IIIIIIIIIIIIII74e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    resultsCount = gg.getResultCount()
    results = gg.getResults(resultsCount)
    for i = 1, resultsCount do
    gg.addListItems({
    [1] = {
    address = results[i].address - 252,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address - 236,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address - 232,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address - 72,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address - 68,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address - 64,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 30,
    flags = 4,
    freeze = true,
    value = 119
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 48,
    flags = 4,
    freeze = true,
    value = 119
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 64,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 68,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 100,
    flags = 4,
    freeze = true,
    value = 4452
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 130,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 180,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 200,
    flags = 4,
    freeze = true,
    value = 4452
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 300,
    flags = 4,
    freeze = true,
    value = 0
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 310,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 360,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 450,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 512,
    flags = 4,
    freeze = true,
    value = 0
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 540,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 544,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 548,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 650,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    gg.addListItems({
    [1] = {
    address = results[i].address + 800,
    flags = 4,
    freeze = true,
    value = -1
    }
    })
    end
    gg.clearResults()
    gg.alert("💯💯الأفضل كسر الحمايه ")
    local t = gg.getListItems()
    gg.removeListItems(t)
    gg.clearResults()
    end
    end

   -- -- -- -- -- -- -- -- -- --KOREA2-- -- -- -- -- -- -- -- -- --
      function serverko2 ()
        gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("خطا لم يتم التفعيل❌❌ حمل لعبة من تلغرام الافضل ❌❌")
      gg.setVisible(true)
      gg.processKill()
      os.exit()
    else
      gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      resultsCount = gg.getResultCount()
      results = gg.getResults(resultsCount)
      for i = 1, resultsCount do
        gg.addListItems({
          [1] = {
            address = results[i].address + 48,
            flags = 4,
            freeze = true,
            value = 70032
          }
        })
        gg.addListItems({
          [1] = {
            address = results[i].address + 100,
            flags = 4,
            freeze = true,
            value = 4451
          }
        })
      end
    end
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("16610;8388646;8388805", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(50)
    gg.editAll("30", gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber("257D;0~99999F;1D;0D::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultsCount()
    gg.searchNumber("0~9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.clearResults()
    gg.alert("💯💯الأفضل كسر الحمايه ")
  end  

 -- -- -- -- -- -- -- -- -- --VITNAME1-- -- -- -- -- -- -- -- -- --
  function servervt1() 
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
    os.remove("/data/data/com.tencent.ig/app_appcache")
    os.remove("/data/data/com.tencent.ig/app_bugly")
    os.remove("/data/data/com.tencent.ig/app_crashrecord")
    os.remove("/data/data/com.tencent.ig/cache")
    os.remove("/data/data/com.tencent.ig/code_cache")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
    os.remove("/storage/emulated/0/tencent")
    os.remove("/storage/emulated/0/MidasOverse")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
    os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
    os.remove("src/main/java/com/google/errorprone/annotations")
    os.remove("src/main/java/com/google/errorprone/annotations")
    os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
    os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("2.2IIIIII95IIIIIIII88IIIIII74e-41;1638IIII4D;16384ID;16384IIIID;16IIIIIIIIIIII384D;1IIIIIIII6384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
    gg.alert("Failed Restart Game And Try , لم يتم التفعيل !! ❌")
    gg.setVisible(true)
    gg.processKill()
    os.exit()
    else
    gg.searchNumber("2.IIIIIIIIIII29588IIIIIIIIIIIIII74e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    resultsCount = gg.getResultCount()
    results = gg.getResults(resultsCount)
    for i = 1, resultsCount do
    gg.addListItems({[1] = {address = results[i].address + 16384,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 65536,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 252,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 236,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 232,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 72,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 68,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 64,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 119}})
    gg.addListItems({[1] = {address = results[i].address + 64,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 68,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4451}})
    gg.addListItems({[1] = {address = results[i].address + 512,flags = 4,freeze = true,value = 0}})
    gg.addListItems({[1] = {address = results[i].address + 540,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 544,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 548,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 252,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 236,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 232,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 72,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 68,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address - 64,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 119}})
    gg.addListItems({[1] = {address = results[i].address + 64,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 68,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4451}})
    gg.addListItems({[1] = {address = results[i].address + 512,flags = 4,freeze = true,value = 0}})
    gg.addListItems({[1] = {address = results[i].address + 540,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 544,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 548,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 65536,flags = 4,freeze = true,value = -1}})
    gg.addListItems({[1] = {address = results[i].address + 16384,flags = 4,freeze = true,value = -1}})
    end
    gg.clearResults()
    end
    gg.sleep(1300)
    os.remove("src/main/java/com/google/errorprone/annotations")
    os.remove("src/main/java/com/google/errorprone/annotations")
    os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
    os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
    gg.alert("💯💯الأفضل كسر الحمايه ")
  end






 -- -- -- -- -- -- -- -- -- --VITNAME2-- -- -- -- -- -- -- -- -- --
function serverpro()
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
  os.remove("/data/data/com.tencent.ig/app_appcache")
  os.remove("/data/data/com.tencent.ig/app_bugly")
  os.remove("/data/data/com.tencent.ig/app_crashrecord")
  os.remove("/data/data/com.tencent.ig/cache")
  os.remove("/data/data/com.tencent.ig/code_cache")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
  os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2IIIIII95IIIIIIII88IIIIII74e-41;1638IIII4D;16384ID;16384IIIID;16IIIIIIIIIIII384D;1IIIIIIII6384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
  gg.alert("Failed Restart Game And Try , لم يتم التفعيل !! ❌")
  gg.setVisible(true)
  gg.processKill()
  os.exit()
  else
  gg.searchNumber("2.IIIIIIIIIII29588IIIIIIIIIIIIII74e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  resultsCount = gg.getResultCount()
  results = gg.getResults(resultsCount)
  for i = 1, resultsCount do
  gg.addListItems({[1] = {address = results[i].address + 16384,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 65536,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 252,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 236,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 232,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 72,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 68,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 64,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 119}})
  gg.addListItems({[1] = {address = results[i].address + 64,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 68,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4451}})
  gg.addListItems({[1] = {address = results[i].address + 512,flags = 4,freeze = true,value = 0}})
  gg.addListItems({[1] = {address = results[i].address + 540,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 544,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 548,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 252,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 236,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 232,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 72,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 68,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address - 64,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 119}})
  gg.addListItems({[1] = {address = results[i].address + 64,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 68,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4451}})
  gg.addListItems({[1] = {address = results[i].address + 512,flags = 4,freeze = true,value = 0}})
  gg.addListItems({[1] = {address = results[i].address + 540,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 544,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 548,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 65536,flags = 4,freeze = true,value = -1}})
  gg.addListItems({[1] = {address = results[i].address + 16384,flags = 4,freeze = true,value = -1}})
  end
  gg.clearResults()
  end
  gg.sleep(1300)
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations")
  os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
  os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.alert("💯💯الأفضل كسر الحمايه ")
  end  




  function serverpro2()
    gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.alert("Failed Restart Game And Try , لم يتم التفعيل !! ❌")
    os.exit()
  else
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    resultsCount = gg.getResultCount()
    results = gg.getResults(resultsCount)
    for i = 1, resultsCount do
      gg.addListItems({[1] = {address = results[i].address + 48,flags = 4,freeze = true,value = 70032}})
      gg.addListItems({[1] = {address = results[i].address + 100,flags = 4,freeze = true,value = 4451}})
    end
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16610;8388646;8388805", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(50)
  gg.editAll("30", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("257D;0~99999F;1D;0D::300", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultsCount()
  gg.searchNumber("0~9999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.clearResults()
    gg.alert("💯💯الأفضل كسر الحماية  ")
    end
  
    
   
  function EXIT0()
    print("بعد تفعيل حمايه لوبي ")
    print("فعل سكربت التفعيلات واستمتع  ")
    print("اذا واجهك 10 دقايق رست كل زون   ")
    gg.skipRestoreState()
      os.exit()
      gg.setVisible(true)
    end
    
    
    while true do
      if gg.isVisible(true) then
        PUBGMH = 1
         gg.setVisible(false)
       end
       gg.clearResults()
       if PUBGMH == 1 then
          HOME()
       end
    end
      

 