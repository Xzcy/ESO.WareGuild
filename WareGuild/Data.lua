--Name Space
SDC_WareGuild = {}
local WG = SDC_WareGuild

--StepType_TAKE
WAREGUILD_TAKE_TO = 11
WAREGUILD_TAKE_ALL = 12
WAREGUILD_DAILY = 31
--StepType_STORE
WAREGUILD_STORE_TO = 21
WAREGUILD_STORE_ALL = 22
--Materials
WAREGUILD_STORE_B = 1 --BlackSmith
WAREGUILD_STORE_C = 2 --Clothing
WAREGUILD_STORE_E = 3 --Enchanting
WAREGUILD_STORE_A = 4 --Alchemy
WAREGUILD_STORE_P = 5 --Provisioning
WAREGUILD_STORE_W = 6 --Woodworking
WAREGUILD_STORE_J = 7 --Jewelry

WAREGUILD_STORE_S = 8 --Style Materials
WAREGUILD_STORE_T = 9 --Trait Items
--QueueType
WAREGUILD_QUEUE_TAKE = 0
WAREGUILD_QUEUE_STORE = 1
WAREGUILD_QUEUE_SPLIT = 2

-------------------
----Daily Writs----
-------------------
--[[
function Test(Item, Material, Type)
  for i = 0, Material do
    local PI, MI = GetSmithingPatternInfoForItemId(Item, i, Type)
    if MI then
      local Link = GetSmithingPatternMaterialItemLink(PI, MI)
      d(i..Link..GetItemLinkItemId(Link))
    end
  end
end
]]

WG.MaterialExcel = { --craftingSkillType, ItemId, MaterialId -> Count
  [1] = { --Black
    --146铁锭 152钢锭 156山铜 160矮人 164乌木 168月长 172水钢 176水银 180虚无 188赤晶
    [43529] = {
      [146] = {5413 ,  3}, [152] = {4487 ,  4}, [156] = {23107, 5 }, [160] = {6000 , 6 }, [164] = {6001 , 7 },
      [168] = {46127,  8}, [172] = {46128,  9}, [176] = {46129, 10}, [180] = {46130, 11}, [188] = {64489, 11},
      },
    [43530] = {
      [146] = {5413 ,  3}, [152] = {4487 ,  4}, [156] = {23107, 5 }, [160] = {6000 , 6 }, [164] = {6001 , 7 },
      [168] = {46127,  8}, [172] = {46128,  9}, [176] = {46129, 10}, [180] = {46130, 11}, [188] = {64489, 11},
      },
    [43531] = {
      [146] = {5413 ,  3}, [152] = {4487 ,  4}, [156] = {23107, 5 }, [160] = {6000 , 6 }, [164] = {6001 , 7 },
      [168] = {46127,  8}, [172] = {46128,  9}, [176] = {46129, 10}, [180] = {46130, 11}, [188] = {64489, 11},
      },
    [43532] = {
      [146] = {5413 , 5 }, [152] = {4487 , 6 }, [156] = {23107, 7 }, [160] = {6000 , 8 }, [164] = {6001 , 9 },
      [168] = {46127, 10}, [172] = {46128, 11}, [176] = {46129, 12}, [180] = {46130, 13}, [188] = {64489, 14},
      },
    [43533] = {
      [146] = {5413 , 5 }, [152] = {4487 , 6 }, [156] = {23107, 7 }, [160] = {6000 , 8 }, [164] = {6001 , 9 },
      [168] = {46127, 10}, [172] = {46128, 11}, [176] = {46129, 12}, [180] = {46130, 13}, [188] = {64489, 14},
      },
    [43534] = {
      [146] = {5413 , 5 }, [152] = {4487 , 6 }, [156] = {23107, 7 }, [160] = {6000 , 8 }, [164] = {6001 , 9 },
      [168] = {46127, 10}, [172] = {46128, 11}, [176] = {46129, 12}, [180] = {46130, 13}, [188] = {64489, 14},
      },
    [43535] = {
      [146] = {5413 ,  2}, [152] = {4487 ,  3}, [156] = {23107,  4}, [160] = {6000 , 5 }, [164] = {6001 , 6 },
      [168] = {46127,  7}, [172] = {46128,  8}, [176] = {46129,  9}, [180] = {46130, 10}, [188] = {64489, 10},
      },
    --Armor
    [43537] = {
      [146] = {5413 , 7 }, [152] = {4487 ,  8}, [156] = {23107,  9}, [160] = {6000 , 10}, [164] = {6001 , 11},
      [168] = {46127, 12}, [172] = {46128, 13}, [176] = {46129, 14}, [180] = {46130, 15}, [188] = {64489, 15},
      },
    [43538] = {
      [146] = {5413 ,  5}, [152] = {4487 ,  6}, [156] = {23107,  7}, [160] = {6000 , 8 }, [164] = {6001 , 9 },
      [168] = {46127, 10}, [172] = {46128, 11}, [176] = {46129, 12}, [180] = {46130, 13}, [188] = {64489, 13},
      },
    [43539] = {
      [146] = {5413 ,  5}, [152] = {4487 ,  6}, [156] = {23107,  7}, [160] = {6000 , 8 }, [164] = {6001 , 9 },
      [168] = {46127, 10}, [172] = {46128, 11}, [176] = {46129, 12}, [180] = {46130, 13}, [188] = {64489, 13},
      },
    [43562] = {
      [146] = {5413 ,  5}, [152] = {4487 ,  6}, [156] = {23107,  7}, [160] = {6000 , 8 }, [164] = {6001 , 9 },
      [168] = {46127, 10}, [172] = {46128, 11}, [176] = {46129, 12}, [180] = {46130, 13}, [188] = {64489, 13},
      },
    [43540] = {
      [146] = {5413 ,  6}, [152] = {4487 ,  7}, [156] = {23107,  8}, [160] = {6000 , 9 }, [164] = {6001 , 10},
      [168] = {46127, 11}, [172] = {46128, 12}, [176] = {46129, 13}, [180] = {46130, 14}, [188] = {64489, 14},
      },
    [43541] = {
      [146] = {5413 ,  5}, [152] = {4487 ,  6}, [156] = {23107,  7}, [160] = {6000 , 8 }, [164] = {6001 , 9 },
      [168] = {46127, 10}, [172] = {46128, 11}, [176] = {46129, 12}, [180] = {46130, 13}, [188] = {64489, 13},
      },
    [43542] = {
      [146] = {5413 ,  5}, [152] = {4487 ,  6}, [156] = {23107,  7}, [160] = {6000 , 8 }, [164] = {6001 , 9 },
      [168] = {46127, 10}, [172] = {46128, 11}, [176] = {46129, 12}, [180] = {46130, 13}, [188] = {64489, 13},
      },
    },
  [2] = { --Cloth
    --149黄麻 155亚麻 159棉花 163蛛丝 167乌丝 169克雷 173紫苑 177银叶 181虚无 194先祖
    [43543] = {
      [149] = {811  , 7 }, [155] = {4463 , 8 }, [159] = {23125, 9 }, [163] = {23126, 10}, [167] = {23127, 11},
      [169] = {46131, 12}, [173] = {46132, 13}, [177] = {46133, 14}, [181] = {46134, 15}, [194] = {64504, 15},
      },
    [44241] = {
      [149] = {811  , 7 }, [155] = {4463 , 8 }, [159] = {23125, 9 }, [163] = {23126, 10}, [167] = {23127, 11},
      [169] = {46131, 12}, [173] = {46132, 13}, [177] = {46133, 14}, [181] = {46134, 15}, [194] = {64504, 15},
      },
    [43544] = {
      [149] = {811  , 5 }, [155] = {4463 , 6 }, [159] = {23125, 7 }, [163] = {23126, 8 }, [167] = {23127, 9 },
      [169] = {46131, 10}, [173] = {46132, 11}, [177] = {46133, 12}, [181] = {46134, 13}, [194] = {64504, 13},
      },
    [43545] = {
      [149] = {811  , 5 }, [155] = {4463 , 6 }, [159] = {23125, 7 }, [163] = {23126, 8 }, [167] = {23127, 9 },
      [169] = {46131, 10}, [173] = {46132, 11}, [177] = {46133, 12}, [181] = {46134, 13}, [194] = {64504, 13},
      },
    [43564] = {
      [149] = {811  , 5 }, [155] = {4463 , 6 }, [159] = {23125, 7 }, [163] = {23126, 8 }, [167] = {23127, 9 },
      [169] = {46131, 10}, [173] = {46132, 11}, [177] = {46133, 12}, [181] = {46134, 13}, [194] = {64504, 13},
      },
    [43546] = {
      [149] = {811  , 6 }, [155] = {4463 , 7 }, [159] = {23125, 8 }, [163] = {23126, 9 }, [167] = {23127, 10},
      [169] = {46131, 11}, [173] = {46132, 12}, [177] = {46133, 13}, [181] = {46134, 14}, [194] = {64504, 14},
      },
    [43547] = {
      [149] = {811  , 5 }, [155] = {4463 , 6 }, [159] = {23125, 7 }, [163] = {23126, 8 }, [167] = {23127, 9 },
      [169] = {46131, 10}, [173] = {46132, 11}, [177] = {46133, 12}, [181] = {46134, 13}, [194] = {64504, 13},
      },
    [43548] = {
      [149] = {811  , 5 }, [155] = {4463 , 6 }, [159] = {23125, 7 }, [163] = {23126, 8 }, [167] = {23127, 9 },
      [169] = {46131, 10}, [173] = {46132, 11}, [177] = {46133, 12}, [181] = {46134, 13}, [194] = {64504, 13},
      },
    --148生皮 154兽皮 158皮革 162厚皮 166脱落 170顶级 174铁制 178上等 182暗影 190发红
    [43550] = {
      [148] = {794  , 7 }, [154] = {4447 , 8 }, [158] = {23099, 9 }, [162] = {23100, 10}, [166] = {23101, 11},
      [170] = {46135, 12}, [174] = {46136, 13}, [178] = {46137, 14}, [182] = {46138, 15}, [190] = {64506, 15},
      },
    [43551] = {
      [148] = {794  , 5 }, [154] = {4447 , 6 }, [158] = {23099, 7 }, [162] = {23100, 8 }, [166] = {23101, 9 },
      [170] = {46135, 10}, [174] = {46136, 11}, [178] = {46137, 12}, [182] = {46138, 13}, [190] = {64506, 13},
      },
    [43552] = {
      [148] = {794  , 5 }, [154] = {4447 , 6 }, [158] = {23099, 7 }, [162] = {23100, 8 }, [166] = {23101, 9 },
      [170] = {46135, 10}, [174] = {46136, 11}, [178] = {46137, 12}, [182] = {46138, 13}, [190] = {64506, 13},
      },
    [43563] = {
      [148] = {794  , 5 }, [154] = {4447 , 6 }, [158] = {23099, 7 }, [162] = {23100, 8 }, [166] = {23101, 9 },
      [170] = {46135, 10}, [174] = {46136, 11}, [178] = {46137, 12}, [182] = {46138, 13}, [190] = {64506, 13},
      },
    [43553] = {
      [148] = {794  , 6 }, [154] = {4447 , 7 }, [158] = {23099, 8 }, [162] = {23100, 9 }, [166] = {23101, 10},
      [170] = {46135, 11}, [174] = {46136, 12}, [178] = {46137, 13}, [182] = {46138, 14}, [190] = {64506, 14},
      },
    [43554] = {
      [148] = {794  , 5 }, [154] = {4447 , 6 }, [158] = {23099, 7 }, [162] = {23100, 8 }, [166] = {23101, 9 },
      [170] = {46135, 10}, [174] = {46136, 11}, [178] = {46137, 12}, [182] = {46138, 13}, [190] = {64506, 13},
      },
    [43555] = {
      [148] = {794  , 5 }, [154] = {4447 , 6 }, [158] = {23099, 7 }, [162] = {23100, 8 }, [166] = {23101, 9 },
      [170] = {46135, 10}, [174] = {46136, 11}, [178] = {46137, 12}, [182] = {46138, 13}, [190] = {64506, 13},
      },
  },
  [6] = { --Wood
    --147枫木 153橡木 157榉木 161核桃 165紫衫 171桦木 175梣木 179红木 183夜木 192赤晶
    [43549] = {
      [147] = {803  , 3 }, [153] = {533,   4 }, [157] = {23121, 5 }, [161] = {23122, 6 }, [165] = {23123, 7 }, 
      [171] = {46139, 8 }, [175] = {46140, 9 }, [179] = {46141, 10}, [183] = {46142, 11}, [192] = {64502, 12}, 
      },
    [43556] = {
      [147] = {803  , 6 }, [153] = {533,   7 }, [157] = {23121, 8 }, [161] = {23122, 9 }, [165] = {23123, 10}, 
      [171] = {46139, 11}, [175] = {46140, 12}, [179] = {46141, 13}, [183] = {46142, 14}, [192] = {64502, 14}, 
      },
    [43557] = {
      [147] = {803  , 3 }, [153] = {533,   4 }, [157] = {23121, 5 }, [161] = {23122, 6 }, [165] = {23123, 7 }, 
      [171] = {46139, 8 }, [175] = {46140, 9 }, [179] = {46141, 10}, [183] = {46142, 11}, [192] = {64502, 12}, 
      },
    [43558] = {
      [147] = {803  , 3 }, [153] = {533,   4 }, [157] = {23121, 5 }, [161] = {23122, 6 }, [165] = {23123, 7 }, 
      [171] = {46139, 8 }, [175] = {46140, 9 }, [179] = {46141, 10}, [183] = {46142, 11}, [192] = {64502, 12}, 
      },
    [43559] = {
      [147] = {803  , 3 }, [153] = {533,   4 }, [157] = {23121, 5 }, [161] = {23122, 6 }, [165] = {23123, 7 }, 
      [171] = {46139, 8 }, [175] = {46140, 9 }, [179] = {46141, 10}, [183] = {46142, 11}, [192] = {64502, 12}, 
      },
    [43560] = {
      [147] = {803  , 3 }, [153] = {533,   4 }, [157] = {23121, 5 }, [161] = {23122, 6 }, [165] = {23123, 7 }, 
      [171] = {46139, 8 }, [175] = {46140, 9 }, [179] = {46141, 10}, [183] = {46142, 11}, [192] = {64502, 12}, 
      },
  },
  [7] = { --Jawelly
    --6 56 137 139 255
    [43536] = {
      [6] = {135138, 2}, [56] = {135140, 3}, [137] = {135142, 4}, [139] = {135144, 6}, [255] = {135146, 10},
      },
    [43561] = {
      [6] = {135138, 3}, [56] = {135140, 5}, [137] = {135142, 6}, [139] = {135144, 8}, [255] = {135146, 15},
      },
  },
  [3] = { --Enchant
    ["Level"] = { --Potency
      [102] = {45855, 45817},--1
      [103] = {45856, 45818},--5
      [104] = {45857, 45819},--10
      [105] = {45806, 45820},--15
      [106] = {45807, 45821},--20
      [107] = {45808, 45822},--25
      [108] = {45809, 45823},--30
      [109] = {45810, 45824},--35
      [110] = {45811, 45825},--40
      [111] = {45812, 45826},--cp10
      [112] = {45813, 45827},--cp30
      [113] = {45814, 45828},--cp50
      [114] = {45815, 45829},--cp70
      [115] = {45816, 45830},--cp100
      [207] = {64509, 64508},--cp150
      [225] = {68341, 68340},--cp160
    },
    ["Id"] = { --Essence
      [26580] = {1, 45831}, [43573] = {2, 45831},
      [26582] = {1, 45832}, [45868] = {2, 45832},
      [26588] = {1, 45833}, [45867] = {2, 45833},
      [26581] = {1, 45834}, [45869] = {2, 45834},
      [26583] = {1, 45835}, [45870] = {2, 45835},
      [26589] = {1, 45836}, [45871] = {2, 45836},
      [26587] = {1, 45837}, [26586] = {2, 45837},
      [26848] = {1, 45838}, [26849] = {2, 45838},
      [5365]  = {1, 45839},  [5364] = {2, 45839},
      [26844] = {1, 45840}, [43570] = {2, 45840},
      [26841] = {1, 45841}, [26847] = {2, 45841},
      [5366]  = {1, 45842}, [26845] = {2, 45842},
      [54484] = {1, 45843}, [26591] = {2, 45843},
      [45874] = {1, 45846}, [45875] = {2, 45846},
      [45883] = {1, 45847}, [45885] = {2, 45847}, 
      [45884] = {1, 45848}, [45886] = {2, 45848},
      [45872] = {1, 45849}, [45873] = {2, 45849},
      [68343] = {1, 68342}, [68344] = {2, 68342}, --Hakeijo
      [166047]= {1, 166045},[166046]= {2, 166045},
    },
    ["Quilty"] = { --Aspect
      [1] = 45850,  --Ta
      [2] = 45851,  --Jejota
      [3] = 45852,  --Denata
      [4] = 45853,  --Rekuta
      [5] = 45854,  --Kuta
    },
  },
}

--Material Id to Link
local function ToLink(Id)
  if not Id then return "" end
  return "|H1:item:"..Id..":0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
end

--Materials still need to take
local function MaterialCount(ItemId, NumTotal, Ignore)
  --ItemLink
  local ItemLink = ToLink(ItemId)
  --Current Stack
  local BackbagCount, BankCount, CraftbagCount =  GetItemLinkStacks(ItemLink)
  
  --Ignore Inventory Setting
  if WG.SV.IgnoreInventory or Ignore then 
    return (NumTotal + BackbagCount)
  end
  
  --Count Inventory
  local NumLack = NumTotal - BackbagCount - BankCount - CraftbagCount
  if NumLack > 0 then
    --Need to Withdraw
    return (NumLack + BackbagCount)
  else
    --No Need to Withdraw
    return 0
  end
end

--Find Missing Item for Daily Writs
function WG.FindDailyItem()
  local Materials = {
    --["ItemLink"], ["Count"], ["ItemId"]
  }
  local SmithM = {
    --[ItemId] = Num
  }
  --Check Quests
  for a = 1, 25 do
    local Type = select(10, GetJournalQuestInfo(a))
    --Daily Writs
    if Type == 4 and not GetQuestConditionMasterWritInfo(a, 1, 1) then
      --Writ Condition
      local Enchant2T
      for b = 1, 6 do
        local ItemId, MaterialId, CraftType, Quilty = GetQuestConditionItemInfo(a, 1, b)
        local NumHold, NumCondition = GetJournalQuestConditionValues(a, 1, b) 
        local Need = NumCondition - NumHold
        if ItemId ~= 0 then
          --Black/Cloth/Wood/Jewelry
          if Need > 0 and (CraftType == 1 or CraftType == 2 or CraftType == 6 or CraftType == 7) then
            local RawId, NumPer = unpack(WG.MaterialExcel[CraftType][ItemId][MaterialId])
            SmithM[RawId] = SmithM[RawId] or 0
            SmithM[RawId] = SmithM[RawId] + (NumPer * Need)
          end
          --Alchemy and Cook Production
          if Need > 0 and ((CraftType == 4 and MaterialId ~= 0) or CraftType == 5) then
            local StartPoint = GetNextGuildBankSlotId()
            if GetNextGuildBankSlotId then
              for i = StartPoint, StartPoint + 500 do
                local ItemLink = GetItemLink(3, i)
                if ItemLink ~= "" and DoesItemLinkFulfillJournalQuestCondition(ItemLink, a, 1, b, GetItemCreatorName(3, i) == GetUnitName("player")) then
                  table.insert(Materials, {["ItemLink"] = ItemLink, ["Count"] = 1})
                end
              end
            end
          end
          --Alchemy Raw Materials
          if Need > 0 and CraftType == 4 and MaterialId == 0 then
            local Target = MaterialCount(ItemId, Need, true)
            table.insert(Materials, {["ItemId"] = ItemId, ["Count"] = Target})
          end
          --Enchant Production
          if Need > 0 and CraftType == 3 and MaterialId ~= 0 then
            local Fork, Rule1 = unpack(WG.MaterialExcel[CraftType]["Id"][ItemId])
            local Rule2, Rule3 = WG.MaterialExcel[CraftType]["Level"][MaterialId][Fork], WG.MaterialExcel[CraftType]["Quilty"][Quilty]
            SmithM[Rule1] = 1
            SmithM[Rule2] = 1
            SmithM[Rule3] = 1
          end
          --Enchant Raw Material
          if Need > 0 and CraftType == 3 and MaterialId == 0 then
            Enchant2T = ItemId
          end
        end
      end
      --Enchant Writ Patch
      if Enchant2T then
        if SmithM[Enchant2T] and MaterialCount(Enchant2T, 1) > 0 then
          local Target = MaterialCount(Enchant2T, 2, true)
          table.insert(Materials, {["ItemId"] = Enchant2T, ["Count"] = Target})
          SmithM[Enchant2T] = nil
        else
          local Target = MaterialCount(Enchant2T, 1, true)
          table.insert(Materials, {["ItemId"] = Enchant2T, ["Count"] = Target})
        end
      end
    end
  end
  --Raw Materials
  for ItemId, Count in pairs(SmithM) do
    local Target = MaterialCount(ItemId, Count)
    if Target > 0 then
      table.insert(Materials, {["ItemId"] = ItemId, ["Count"] = Target})
    end
  end
  --End
  return Materials
end