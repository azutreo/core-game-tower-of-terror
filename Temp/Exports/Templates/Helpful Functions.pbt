Assets {
  Id: 7974704566423448515
  Name: "Helpful Functions"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14311196095947691369
      Objects {
        Id: 14311196095947691369
        Name: "TemplateBundleDummy"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 751867494844461457
            }
          }
        }
      }
    }
    Assets {
      Id: 751867494844461457
      Name: "HelpfulFunctions"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Module = {}\r\n\r\nfunction Module:FindPlayerByName(playerName)\r\n    for _, player in pairs(Game.GetPlayers()) do\r\n        if(player.name == playerName) then\r\n            return player\r\n        end\r\n    end\r\nend\r\n\r\nfunction Module:WaitForChild(parent, childName, timeout)\r\n    assert(Object.IsValid(parent), \"Parent is not a valid Object\")\r\n\r\n    local child, connection\r\n    connection = parent.childAddedEvent:Connect(function(_, newChild)\r\n        if(newChild.name ~= childName) then return end\r\n\r\n        child = newChild\r\n        connection:Disconnect()\r\n    end)\r\n\r\n    child = parent:FindChildByName(childName)\r\n    if(child) then\r\n        connection:Disconnect()\r\n        return child\r\n    end\r\n\r\n    local startTime = time()\r\n    local runTime = 0\r\n    if(not timeout) then\r\n        timeout = 60\r\n    end\r\n\r\n    while(not child) do\r\n        Task.Wait()\r\n        runTime = time() - startTime\r\n\r\n        if(runTime > timeout) then connection:Disconnect() return end\r\n    end\r\n\r\n    return child\r\nend\r\n\r\nlocal function scanParent(parent, descendants)\r\n    for _, child in pairs(parent:GetChildren()) do\r\n        table.insert(descendants, child)\r\n        descendants = scanParent(child, descendants)\r\n    end\r\n\r\n    return descendants\r\nend\r\n\r\nfunction Module:GetDescendants(parent)\r\n    assert(Object.IsValid(parent), \"Parent is not a valid Object\")\r\n\r\n    return scanParent(parent, {})\r\nend\r\n\r\nreturn Module"
      }
      Marketplace {
        Description: "Includes two very useful functions relating to the world:\r\n\r\nfunction Module:WaitForChild(parent, childName, timeout)\r\nfunction Module:GetDescendants(parent)"
      }
      DirectlyPublished: true
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "899989a202d343b69837232b04791066"
    OwnerAccountId: "f9df3457225741c89209f6d484d0eba8"
    OwnerName: "nforeman"
    Version: "1.2.0"
    Description: "Includes two very useful functions relating to the world:\r\n\r\nfunction Module:WaitForChild(parent, childName, timeout)\r\nfunction Module:GetDescendants(parent)"
  }
  SerializationVersion: 61
}
IncludesAllDependencies: true
