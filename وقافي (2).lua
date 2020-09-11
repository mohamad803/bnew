
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼€å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼€å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼€å¯æˆåŠŸ,å…±ä¿®æ”¹" .. xgsl .. "æ¡æ•°æ®") else gg.toast(qmnb[2]["name"] .. "å¼€å¯å¤±è´¥") end end end end
--é…ç½®â†‘â†‘â†‘å‹¿ä¿®æ”¹ï¼Œè°ƒç”¨æ–¹æ³•   xqmnb(qmnb)
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x]["address"] xglx = Loading1[x]["flags"] xgsz = Loading1[x]["value"] xgdj = Loading1[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.setRanges(Loading[1]["memory"]) gg.searchNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Loadå¤±è´¥âŒ") else gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Loadå¤±è´¥âŒ") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v]["address"] pysz[1].flags = Loading[v]["flags"] szpy = gg.getValues(pysz) pdpd = Loading[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end if xgjg == true then 
end end end end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]
gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.." å¼€å¯å¤±è´¥")else sl=gg.getResults(50000)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.." å¼€å¯æˆåŠŸ")else gg.toast(_on.." å¼€å¯å¤±è´¥")end end end
local app = {}
--è®¾ç½®æœç´¢æ¨¡å¼
app.memorySearchMode = function(MEMORY) 
if (MEMORY == 2) then
gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP) 
end 
if (MEMORY == -1) then
gg.setRanges(gg.REGION_VIDEO) 
end 
if (MEMORY == -2) then 
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_CODE_SYS)         
end 
if (MEMORY == 0) then 
gg.setRanges(gg.REGION_ANONYMOUS)
end        
end
function checkType(dataType)	local type 
if dataType =="D" or dataType == "D" then 
type = gg.TYPE_DWORD 
end 
if dataType == "F" then 
type = gg.TYPE_FLOAT 
end 
if dataType == "E" then 
type = gg.TYPE_DOUBLE 
end 
if dataType == "B" or dataType == "B" then 
type =  gg.TYPE_BYTE 
end 
if dataType == "W" or dataType == "W" then 
type = gg.TYPE_WORD os.exit() 
end	
return type 
end
app.memorySearch = function(pkgName, isNewSearch, address, tb, dataType)	
gg.clearResults() 
gg.setVisible(false)	local isSucess = gg.searchNumber(tb[1]["lv"], checkType(dataType), false, gg.SIGN_EQUAL, address, -1);	local t = gg.getResults(9999);	local tab = {}	local data = {}	for i=1, #t do	for j=2, #tb do	tab[j] = {} tab[j].address = t[i].address + tb[j]["offset"] if(tb[j]["type"] == nil) then tab[j].flags = t[i].flags else tab[j].flags = checkType(tb[j]["type"]) end tab = gg.getValues(tab)	if (tab[j].value == tb[j]["lv"]) then data[#data+1] = t[i].address end end	end gg.clearResults() return isSucess, data end app.memoryWrite = function(pkgName, address, value, dataType) gg.setVisible(false)	local t = {}	t[1] ={}	t[1].address = address	t[1].flags = checkType(dataType)	t[1].value = value	return gg.setValues(t) end
GG = {Read,Write} 
function GG.ReadWrite(Read,Writw)TZ = {} dataTZ = Read[1] offset = dataTZ[2] for i=1,#Read do TZA = Read[i] LV = {["lv"] = TZA[1],["offset"] = TZA[2]-offset} table.insert(TZ, i, LV) end app.memorySearchMode(Memory) isSuuess,TUG = app.memorySearch(pkgName, true, 0, TZ, Type) if TUG[1] == nil then  else for ii=1,#TUG do for iii=1,#Write do dataxg = Write[iii] value = dataxg[1] Deviant = dataxg[2] app.memoryWrite(pkgName,TUG[ii]+Deviant-offset,value,Type) end end gg.toast(ID.. "å¼€å¯æˆåŠŸ") end end
function SearchWrite(Search, Write, Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1], Type)
local t = gg.getResults(9999)
gg.clearResults()
if t ~= nil then
local r = {}
for j=2, #Search do
for i, v in ipairs(t) do
r[i] = {}
r[i].address = v.address + Search[j][2] - Search[1][2]
r[i].flags = v.flags
end
r = gg.getValues(r)
for i = #t, 1, -1 do
if (tostring(r[i].value) ~= tostring(Search[j][1]) ) then
table.remove(t, i)
table.remove(r, i)
end
end       
end
--å†™å…¥æ•°æ®
local r = {}
for i=1, #t do
for j=1, #Write do
r[#r+1] = {}
r[#r].address = t[i].address + Write[j][2] - Search[1][2]
r[#r].flags = t[i].flags
r[#r].value = Write[j][1]
r[#r].freeze = true--å†»ç»“çš„è¯ä¿®æ”¹åŽé¢åŠ false
end
end
gg.setValues(r)
end
end
  SN = gg.searchNumber
GC = gg.choice
MC = gg.multiChoice
GR = gg.getResults
GRC = gg.getResultCount
EA = gg.editAll
SA = gg.searchAddress
TX = gg.TYPE_XOR
TB = gg.TYPE_BYTE
TQ = gg.TYPE_QWORD
TF = gg.TYPE_FLOAT
TDB = gg.TYPE_DOUBLE
TW = gg.TYPE_WORD
TD = gg.TYPE_DWORD
TA = gg.TYPE_AUTO
SE = gg.SIGN_EQUAL
SF = gg.SIGN_FLOAT
TT = gg.toast
CR = gg.clearResults
AR = gg.alert
SR = gg.setRanges
RA = gg.REGION_ANONYMOUS
RB = gg.REGION_BAD
RC = gg.REGION_C_ALLOC
SV = gg.setValues
PT = gg.prompt
PR = print
FC = gg.processKill
--gg.addListItems(r)
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼€å¯å¤±è´¥") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "å¼€å¯å¤±è´¥") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "å¼€å¯æˆåŠŸ,å…±ä¿®æ”¹" .. xgsl .. "æ¡æ•°æ®") else gg.toast(qmnb[2]["name"] .. "å¼€å¯å¤±è´¥") end end end end
function SearchWrite(Search, Write, Type)gg.clearResults()gg.setVisible(false)gg.searchNumber(Search[1][1], Type)local count = gg.getResultCount()local result = gg.getResults(count)gg.clearResults()local data = {}local base = Search[1][2]if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags  end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("found "..#data.." data") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("Not Found")  return false end end

function Nothing1998_MemoryTools(valueSearch, valueModify, valueType)
  Nothing1998ClearResults()
  Nothing1998.gg.setVisible(false)
  Nothing1998.gg.searchNumber(valueSearch[1][1], valueType)
  local valueCount = Nothing1998.gg.getResultCount()
  local valueResult = Nothing1998.gg.getResults(valueCount)
  Nothing1998ClearResults()
  local valueData = {} 
  local valueBase = valueSearch[1][2] 
  if (valueCount > 0) then
      for i, v in ipairs(valueResult) do
          v.isUseful = true 
      end
      for k=2, #valueSearch do
          local valueTmp = {}
          local valueOffset = valueSearch[k][2] - valueBase 
          local valueNum = valueSearch[k][1]       
          for i, v in ipairs(valueResult) do
              valueTmp[#valueTmp+1] = {} 
              valueTmp[#valueTmp].address = v.address + valueOffset  
              valueTmp[#valueTmp].flags = v.flags  
          end       
          valueTmp = gg.getValues(valueTmp)  
          for i, v in ipairs(valueTmp) do
              if ( tostring(v.value) ~= tostring(valueNum) ) then 
                  valueResult[i].isUseful = false 
              end
          end
      end
      for i, v in ipairs(valueResult) do
          if (v.isUseful) then 
              valueData[#valueData+1] = v.address
          end
      end
      if (#valueData > 0) then    
         Nothing1998.gg.toast(#valueData.." value found")
         local t = {}
         local valueBase = valueSearch[1][2]
         for i=1, #valueData do
             for k, w in ipairs(valueModify) do
                 valueOffset = w[2] - valueBase
                 t[#t+1] = {}
                 t[#t].address = valueData[i] + valueOffset
                 t[#t].flags = valueType
                 t[#t].value = w[1]           
                 if (w[3] == true) then
                     local valueItem = {}
                     valueItem[#valueItem+1] = t[#t]
                     valueItem[#valueItem].freeze = true
                     Nothing1998.gg.addListItems(valueItem)
                 end         
             end
         end
         Nothing1998.gg.setValues(t)    
      else
          Nothing1998.gg.toast("Failed to search value.", false)
          return false
      end
  else
      Nothing1998.gg.toast("Failed to search value.")
      return false
  end
end
function Nothing1998Toast(msg)
Nothing1998.gg.toast(tostring(msg))
end
function Nothing1998ClearResults()
Nothing1998.gg.clearResults()
end

--DATA = io.open("/storage/emulated/0/Android/data/jok/facr.dat", "rb")
--DATATWO = io.open("/storage/emulated/0/Android/data/jok/jkr.dat", "rb")

--if DATA==nil or DATATWO==nil then
--gg.alert("Please Start The Antiban First ❗\n\nلفتح السكربت قم بتشغيل الحماية اولاً ❗")
--os.exit()
--end

--local PKGNAME = DATA:read()
--local ANDID = DATATWO:read()


--function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end

function HOME()
menu = gg.choice({

  " وقافي VIP :::ترسيت سريع",
  " وقافي VIP :::ثبات سلاح 100 /لوبي",
  " وقافي VIP :::ثبات سلاح 100  64/لوبي",
  " وقافي VIP :::انستا هيد /لوبي ",
  " وقافي VIP :::قائمة الهيد شوت ",
  " وقافي VIP :::سيت سكوب ",
  " وقافي VIP :::ستاند سكوب",
  " وقافي VIP :::ازاله العشب",
  " وقافي VIP :::سرعة خفيفة",
  " وقافي VIP :::زيادة دمج M4",
  " وقافي VIP :::زيادة دمج AKM",
  " وقافي VIP :::زيادة دمج SCAR",
  " وقافي VIP :::زيادة دمج DP",
  " وقافي VIP :::زيادة دمج M249",
  " وقافي VIP :::سرعة جيب + بقي",
  " وقافي VIP :::لوبي/ PCايمبوت ",
  " وقافي VIP :::تجميد بترول   ",
  " وقافي VIP :::نزول برشوت بعييد ",
  " وقافي VIP :::ازاله الضباب",
  " وقافي VIP ::: قفزة الجيب ",
  " وقافي VIP ::: تشغيل فلاش   ",
  " وقافي VIP ::: ايقاف فلاش  ",
  " وقافي VIP ::: اصلاح دمج فلاش فلاش  ",
  " وقافي VIP :::    الخروج        ",
 }, nil,"╭══════════ೋೋ═══════════╮  \n 目                  وقافي VIP                      目 \n╰══════════ೋೋ═══════════╯")
if menu == 1 then TA1() end 
if menu == 2 then TA2() end
if menu == 3 then allgun2() end
if menu == 4 then TA3() end
if menu == 5 then TA4() end
if menu == 6 then TA5() end 
if menu == 7 then ta6() end
if menu == 8 then TA7() end
if menu == 9 then TA8() end
if menu == 10 then TA9() end
if menu == 11 then TA10() end
if menu == 12 then TA11() end
if menu == 13 then TA12() end
if menu == 14 then TA13() end
if menu == 15 then TA14() end
if menu == 16 then TA15() end
if menu == 17 then gaz() end
if menu == 18 then fp() end
if menu == 19 then nofrog() end
if menu == 20 then JIEB() end
if menu == 21 then SHNLON() end
if menu == 22 then SHNLOFF() end
if menu == 23 then FixND() end
if menu == 24 then EXIT() end

  PUBGMH = -1
end




function allgun2 ()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("1,084,227,584D;1D;0.64999997616F;1.2520827e-32F", 16, false, 536870912, 0, -1)
  gg.searchNumber("1.2520827e-32", 16, false, 536870912, 0, -1)
  gg.getResults(100)
  gg.editAll("1.4012985e-43", 16)
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0.2~0.3;53;30;1::", 16, false, 536870912, 0, -1)
  gg.searchNumber("0.2~0.3;1::", 16, false, 536870912, 0, -1)
  gg.getResults(200)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("2~4;1.09375;1;18;3.5::25", 16, false, 536870912, 0, -1)
  gg.searchNumber("2~4;1.09375::5", 16, false, 536870912, 0, -1)
  gg.searchNumber("2~4", 16, false, 536870912, 0, -1)
  gg.getResults(50)
  gg.editAll("-0.5", 16)
  gg.clearResults()
  gg.toast("🇸🇾 _ßÈ₷₸▌━━100━━▌🇸🇾") 
  end
  


function SHNLON()
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
    gg.searchNumber("-6.03221444e26;-1.3078764e28;-3.74440972e28;-1.86389771e-20;-1.11445016e28;-9.39921508e20;-1.8331477e27:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.86389771e-20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
  gg.toast("SR - Flash ")
    gg.clearResults()
  gg.clearResults()
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
        end

function SHNLOFF()
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
    gg.searchNumber("-6.03221444e26;-1.3078764e28;-3.74440972e28;0;-1.11445016e28;-9.39921508e20;-1.8331477e27:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("-1.86389771e-20", gg.TYPE_FLOAT)
    gg.clearResults()
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end








function JIEB()
gg.clearResults()
gg.processResume()
gg.searchNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("955", gg.TYPE_FLOAT)
gg.processResume()
gg.sleep(1000)
if revert ~= nil then gg.setValues(revert) end
gg.clearResults()
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end




function nofrog()
  gg.clearResults()
  gg.setRanges(16384)
  gg.searchNumber("-1.3620439e28;-1.3978205e24",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1) --Saifu
  gg.refineAddress("098",-1,gg.TYPE_FLOAT,gg.SIGN_EQUAL,0,-1)
  gg.getResults(7243)
  gg.editAll("0",gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("وقافي VIP :::ازاله الضباب")
end



function TA1()
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("1.3132476e-38;1.956023e-35;1.1754945e-37::9", 16, false, 536870912, 0, -1)
gg.searchNumber("1.1754945e-37", 16, false, 536870912, 0, -1)
gg.getResults(21)
gg.editAll("1001001", 16)
gg.sleep("3000")
gg.clearResults()
gg.searchNumber("1.3132476e-38;1.956023e-35;1.1754945e-37::9", 16, false, 536870912, 0, -1)
gg.searchNumber("1001001", 16, false, 536870912, 0, -1)
gg.getResults(21)
gg.editAll("1.1754945e-37", 16)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end

function TA2()
gg.clearResults()
karar = {
{["memory"] = 32},
{["name"] = "🎯ɴᴏ ʀᴇᴄᴏɪʟ"},
{["value"] = 8247572459728890950, ["type"] = 32},
{["lv"] = 32481181722559348, ["offset"] = 4, ["type"] = 32},
}
qmxg = {
{["value"] = 1634692266, ["offset"] = 0, ["type"] = 4},

}
xqmnb(karar)
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
  gg.searchNumber("-2.786982e28;-3.7444097e28;-1.1368837e-13::", 16, false, 536870912, 0, -1)
  gg.searchNumber("-3.7444097e28", 16, false, 536870912, 0, -1)
  gg.getResults(5)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
  gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", 16, false, 536870912, 0, -1)
  gg.searchNumber("-1.1144502e28", 16, false, 536870912, 0, -1)
  gg.getResults(1)
  gg.editAll("0", 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
  gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", 16, false, 536870912, 0, -1)
  gg.searchNumber("-1.1144502e28", 16, false, 536870912, 0, -1)
  gg.getResults(1)
  gg.editAll("0", 16)
  gg.clearResults() 
  gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-1387800265460020720", 32, false, gg.SIGN_EQUAL, 0, -1) 
NL100OFF2=gg.getResults(5) 
gg.editAll("-1 387 800 268 364 578 816", 32) 

gg.setRanges(32)
gg.searchNumber("0.2~0.3;53;30;1::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.2~0.3;1::", 16, false, 536870912, 0, -1)
gg.getResults(200)
gg.editAll("0", 16)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.2673448e24;-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("No Recoil Successful!")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1903895931231645696", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
gg.toast('ثبات 100vip وقافي VIP  ')
gg.clearResults()
end

function TA3()
  gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
 end


function TA4()
  HEDD = gg.multiChoice({
"∆ هيد شوت 100% 〔ايملوك〕 ",
"∆  هيد شوت  100% 〔فلفل〕 ",
"∆  هيد شوت  100% 〔مجك〕 ",
"∆ هيد شوت 100% 〔فلاش〕 ",
   }, nil, "\n【 The Best 】\n【 الأفضل 】\n")
  if HEDD == nil then
  else
    if HEDD[1] == true then
      HD1()
    end
    if HEDD[2] == true then
      HD2()
    end
     if HEDD[3] == true then
     HD3()
    end
    if HEDD[4] == true then
    HD4()
    end
end
PUBGMH = -1
end

function HD1()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1903895931231645696", gg.TYPE_QWORD)
gg.toast('wait')
gg.clearResults()
qmnb = {
{["memory"] = 32},
{["name"] = "Headshot"},
{["value"] = 9.203507215715945E-5, ["type"] = 16},
{["lv"] = 25.0, ["offset"] = 20, ["type"] = 16},
{["lv"] = 30.5, ["offset"] = 24, ["type"] = 16},
}
qmxg = {
{["value"] = 210, ["offset"] = 20, ["type"] = 16},
{["value"] = 210, ["offset"] = 24, ["type"] = 16},
}
xqmnb(qmnb)
gg.toast("wait")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1228926272664220957", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1228926272664220957", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("E00", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1228926272664220957", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1228926276669014016", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end


function gaz()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.647058857", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(20)
  gg.editAll("-170", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Uaz Speed Active")
  gg.clearResults()
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end

function fp ()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.75;150;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("0.75;150;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(999)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
  end




function HD2()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-88.66608428955;26:512", 16, false, 536870912, 0, -1)
gg.searchNumber("26", 16, false, 536870912, 0, -1)
gg.getResults(2)
gg.editAll("-460", 16)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
gg.searchNumber("28", 16, false, 536870912, 0, -1)
gg.getResults(2)
gg.editAll("-560", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.201618;30.5;25", 16, false, 536870912, 0, -1)
gg.searchNumber("30.5;25", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("253", 16)
gg.clearResults()
gg.setRanges(16)
gg.searchNumber("2048D;1F", 16, false, 536870912, 0, -1)
gg.searchNumber("1", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0.07", 16)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("9.1022205e-38;0.0001;9.1025635e-38::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("125", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-7.1611644e24;0.0001;1.1297201e-37::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
gg.getResults(500)
gg.editAll("-125", 16)
gg.clearResults()
gg.toast("شوي شوي ترا يعور  وقافي VIP  ")
end


function HD3()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;23;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("23;25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("25;23;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("23;25;30.5",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(3)
gg.editAll("180",gg.TYPE_FLOAT)
gg.clearResults()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
 if v.flags == gg.TYPE_FLOAT then
  v.value = "200"
  v.freeze = true
 end
end
gg.addListItems(t)
t = nil
gg.editAll("9999",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("vip")
end

function HD4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.toast("10%")
  gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("260", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("20%")
  gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("120", gg.TYPE_FLOAT)
  gg.toast("30%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResultCount()
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("240", gg.TYPE_FLOAT)
  gg.toast("40%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000;1000;1000", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("50%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("16;26::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("60%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("8;15;18;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("70%")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("27.25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("80%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("10;35;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("90%")
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("45;33;69.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll("-1000", gg.TYPE_FLOAT)
  gg.toast("100%")
  gg.toast("دمج وقافي VIP  ")
  
  gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-88.66608428955;26:512", 16, false, 536870912, 0, -1)
gg.searchNumber("26", 16, false, 536870912, 0, -1)
gg.getResults(2)
gg.editAll("-460", 16)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", 16, false, 536870912, 0, -1)
gg.searchNumber("28", 16, false, 536870912, 0, -1)
gg.getResults(2)
gg.editAll("-560", 16)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.201618;30.5;25", 16, false, 536870912, 0, -1)
gg.searchNumber("30.5;25", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("253", 16)
gg.clearResults()
gg.setRanges(16)
gg.searchNumber("2048D;1F", 16, false, 536870912, 0, -1)
gg.searchNumber("1", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0.07", 16)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("9.1022205e-38;0.0001;9.1025635e-38::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("125", 16)
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("-7.1611644e24;0.0001;1.1297201e-37::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.0001", 16, false, 536870912, 0, -1)
gg.getResults(500)
gg.editAll("-125", 16)
gg.clearResults()

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("360;0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,324,366,404",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1,324,366,404",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
 if v.flags == gg.TYPE_DWORD then
  v.value = "100"
  v.freeze = true
 end
end
gg.addListItems(t)
t = nil
gg.editAll("100",gg.TYPE_DWORD)
gg.clearResults()

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end

function TA5()
SIT = gg.choice({
    "sɪᴛ sᴄᴏᴘᴇ ᴏɴ",
    "sɪᴛ sᴄᴏᴘᴇ ᴏғғ",
    "🅱🅰🅲🅺"
  }, nil, "chσσѕє ѕσmєthín")
  if SIT == nil then
  else
    if SIT == 1 then
      siton()
    end--Iғ
    if SIT == 2 then
      sitoff()
    end--Iғ
    if SIT == 3 then
      HOME()
    end--Iғ
  end--Eʟsᴇ
  PUBGMH = -1
end--Fᴜɴᴄᴛɪᴏɴ

function siton()
  gg.setRanges(32)
  gg.searchNumber("-4767057191653227520", 32, false, 536870912, 0, -1)
  gg.refineNumber("-4767057191653227520", 32, false, 536870912, 0, -1)
  gg.refineNumber("-4767057191653227520", 32, false, 536870912, 0, -1)
  gg.getResults(1401)
  gg.editAll("-4767057191527907328", 32)
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end--Fᴜɴᴄᴛɪᴏɴ

function sitoff()
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("-4767057191527907328", 32, false, 536870912, 0, -1)
  gg.refineNumber("-4767057191527907328", 32, false, 536870912, 0, -1)
  gg.refineNumber("-4767057191527907328", 32, false, 536870912, 0, -1)
  gg.getResults(1401)
  gg.editAll("-4767057191653227520", 32)
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
  gg.clearResults()
end--Fᴜɴᴄᴛɪᴏɴ

function ta6()
  STD = gg.choice({
    "stand sᴄᴏᴘᴇ ᴏɴ",
    "stand sᴄᴏᴘᴇ ᴏғғ",
    "🅱🅰🅲🅺"
  }, nil, "chσσѕє ѕσmєthín")
  if STD == nil then
  else
    if STD == 1 then
      stnon()
    end--Iғ
    if STD == 2 then
      stnoff()
    end--Iғ
    if STD == 3 then
      HOME()
    end--Iғ
  end--Eʟsᴇ
  PUBGMH = -1
end--Fᴜɴᴄᴛɪᴏɴ

function stnon()
  gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;9.49029350281;0.0064272880554199", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    local t = gg.getResults(0)
    gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    local t = gg.getResults(500)
    gg.editAll("124", gg.TYPE_FLOAT)
   gg.clearResults()
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end--Fᴜɴᴄᴛɪᴏɴ

function stnoff()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('-0.67914116382599;-0.20633073151112;-0.68966287374496;9.49029350281;0.0064272880554199::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('333.0517578125', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(500)
  gg.editAll('9.49029350281', gg.TYPE_FLOAT)
  gg.toast('Sit Scope OFF ✔')
  gg.clearResults()
  gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end


function TA7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
  karar = {
{["memory"] = 4},
{["name"] = ""},
{["value"] = 743073927, ["type"] = 4},
{["lv"] = 33555456, ["offset"] = 4, ["type"] = 4},
{["lv"] = 537395204, ["offset"] = 8, ["type"] = 4},
}
qmxg = {
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
}
xqmnb(karar)
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end


function TA8()
    gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.05", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
  end
  
  

function TA9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000;0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")

end


function TA10()

gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500;0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end


function TA11()

gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("87000;0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
  
end


function TA12()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500;0.109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
  
end


function TA13()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("91500;0.07500000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("91500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
end

function TA14()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4,510,805,389,551,707,558", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  SPEEDVOFF1=gg.getResults(100)
  gg.editAll("4,934,185,974,142,451,712", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("4,571,418,540,709,091,738", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  SPEEDVOFF2=gg.getResults(100)
  gg.editAll("4,571,418,540,807,667,712", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("0.00999999978", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineAddress("E0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
  SPEEDVOFF3=gg.getResults(1000)
  gg.editAll("-0.25", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("0.72727274895;0.34377467632::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
SPEEDVOFF4=gg.getResults(50)
gg.editAll("65.241295", gg.TYPE_FLOAT)
gg.toast("🇸🇾____وقافي▌━━━━━━▌🇸🇾")
  end
  
function TA15()

gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.clearResults()
end 


function FixND()
  gg.clearResults()
  gg.alert("🇸🇾قبل اختيار نوع سلاح يجب ان يكون بيدك نفس السلاح المطلوب اصلاحه🇸🇾")
  FIXNODMG = gg.multiChoice({
      '—⪻ اصلاح دمج  M416',
      '—⪻ اصلاح دمج  Sᴄᴀʀ-L',
      '—⪻ اصلاح دمج  M➀➅ᴀ➃',
      '—⪻ اصلاح دمج  Qʙᴢ',
      '—⪻ اصلاح دمج  G➂➅ᴄ',
      '—⪻ اصلاح دمج  Aᴜɢ A3',
      '—⪻ اصلاح دمج  Aᴋᴍ',
      '—⪻ اصلاح دمج  Bᴇʀʏʟ',
      '—⪻ اصلاح دمج  Gʀᴏᴢᴀ',
      '—⪻ اصلاح دمج  Mᴜᴛᴀɴᴛ',
      '—⪻ اصلاح دمج  Aᴡᴍ',
      '—⪻ اصلاح دمج  Kᴀʀ98',
      '—⪻ اصلاح دمج  M24',
      '—⪻ اصلاح دمج  Sᴋs',
      '—⪻ اصلاح دمج  Mᴋ 14',
      '—⪻ اصلاح دمج  Mɪɴɪ 14',
      '—⪻ اصلاح دمج  Sʟʀ',
      '—⪻ اصلاح دمج  Qʙᴜ',
      '—⪻ اصلاح دمج  M249',
      '—⪻ اصلاح دمج  Dᴘ-28',
      '══════⪼『 Exɪᴛ 』⪻══════'
  }, nil, '◆▬▬▬▬▬▬▬▬▬❴✪❵▬▬▬▬▬▬▬▬▬◆\n                         Fɪxᴇᴅ Nᴏ Dᴀᴍᴀɢᴇ')
  if FIXNODMG == nil then
  else
  if FIXNODMG[1] == true then
  FS1()
  end
  if FIXNODMG[2] == true then
  FS2()
  end
  if FIXNODMG[3] == true then
  FS3()
  end
  if FIXNODMG[4] == true then
  FS4()
  end
  if FIXNODMG[5] == true then
  FS5()
  end
  if FIXNODMG[6] == true then
  FS6()
  end
  if FIXNODMG[7] == true then
  FS7()
  end
  if FIXNODMG[8] == true then
  FS8()
  end
  if FIXNODMG[9] == true then
  FS9()
  end
  if FIXNODMG[10] == true then
  FS10()
  end
  if FIXNODMG[11] == true then
  FS11()
  end
  if FIXNODMG[12] == true then
  FS12()
  end
  if FIXNODMG[13] == true then
  FS13()
  end
  if FIXNODMG[14] == true then
  FS14()
  end
  if FIXNODMG[15] == true then
  FS15()
  end
  if FIXNODMG[16] == true then
  FS16()
  end
  if FIXNODMG[17] == true then
  FS17()
  end
  if FIXNODMG[18] == true then
  FS18()
  end
  if FIXNODMG[19] == true then
  FS19()
  end
  if FIXNODMG[20] == true then
  FS20()
  end
  if FIXNODMG[21] == true then
  HOME()
  end
  end
  PUBGGMH = -1
  end
  
  function FS1()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('88000;0.08600000292', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('88000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1401)
    gg.editAll('37401', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('تم اصلاح الام فور🔫')
    gg.clearResults()
  end
  
  function FS2()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('87000;0.09600000083', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('87000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1401)
    gg.editAll('37401', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('تم اصلاح الاسكار ال 🔫')
    gg.clearResults()
  end
  
  function FS3()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('90000;0.07500000298', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('90000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nM➀➅ᴀ➃ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS4()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('87000;0.09229999781', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('87000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nQʙᴢ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS5()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('87000;0.86', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('87000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nG➂➅ᴄ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('94000;0.08570999652', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('94000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nAᴜɢ A➂ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS7()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('71500;0.10000000149', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('71500', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nAᴋᴍ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS8()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('71500', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('71500', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.toast('\nBᴇʀʏʟ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS9()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('71500;0.07999999821', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('71500', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nGʀᴏᴢᴀ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS10()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('78000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('78000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.toast('\nMᴜᴛᴀɴᴛ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS11()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('91000;2.2;2.5::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('91000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.toast('\nAᴡᴍ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS12()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('76000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('76000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.toast('\nKᴀʀ➈➇ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS13()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('79000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('79000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.toast('\nM➁➃ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS14()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('80000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('80000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nSᴋs اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS15()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('85300;0.09000000358', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('85300', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nMᴋ ➀➃ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS16()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('99000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('99000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.toast('\nMɪɴɪ ➀➃ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS17()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('84000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('84000', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.toast('\nSʟʀ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS18()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('94500', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('94500', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.toast('\nQʙᴜ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS19()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('91500;0.07500000298', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('91500', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nM➁➃➈ اصلاح دمج ')
  gg.clearResults()
  end
  
  function FS20()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber('71500;0.109', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber('71500', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1401)
  gg.editAll('37401', gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast('\nDᴘ-➁➇ اصلاح دمج ')
  gg.clearResults()
  end




function EXIT()
  print("تم تعديل السكربت بواسطة @mohamadalkhous")
  print("THE وقافي HACK")
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