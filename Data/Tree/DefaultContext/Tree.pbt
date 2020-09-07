Name: "DefaultContext"
RootId: 15175674836964900114
Objects {
  Id: 3035913160428297815
  Name: "ShopServer"
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
  ParentId: 15175674836964900114
  UnregisteredParameters {
    Overrides {
      Name: "cs:ShopData"
      AssetReference {
        Id: 12595170524562520017
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 8516590172781741529
    }
  }
}
Objects {
  Id: 7730990522747765320
  Name: "Trails"
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
  ParentId: 15175674836964900114
  UnregisteredParameters {
    Overrides {
      Name: "cs:TrailTemplate"
      AssetReference {
        Id: 7059660637648939298
      }
    }
    Overrides {
      Name: "cs:ShopData"
      AssetReference {
        Id: 12595170524562520017
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 1860856796969384327
    }
  }
}
Objects {
  Id: 3151665289877906911
  Name: "PlayerEditor"
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
  ParentId: 15175674836964900114
  UnregisteredParameters {
    Overrides {
      Name: "cs:PrefixTags"
      AssetReference {
        Id: 11610679453907326437
      }
    }
    Overrides {
      Name: "cs:HelpfulFunctions"
      AssetReference {
        Id: 751867494844461457
      }
    }
    Overrides {
      Name: "cs:TeleportGameId"
      String: "b983bc/core-plaza"
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 5732132787429927121
    }
  }
}
Objects {
  Id: 17521672477466867129
  Name: "Game"
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
  ParentId: 15175674836964900114
  UnregisteredParameters {
    Overrides {
      Name: "cs:Timer"
      Float: 0
    }
    Overrides {
      Name: "cs:HighestPoint"
      Vector {
      }
    }
    Overrides {
      Name: "cs:Multiplier"
      Float: 1
    }
    Overrides {
      Name: "cs:DefaultTime"
      Int: 540
    }
    Overrides {
      Name: "cs:Scenes"
      ObjectReference {
        SelfId: 11896748406750712304
      }
    }
    Overrides {
      Name: "cs:ThunderSquids"
      ObjectReference {
        SelfId: 2587558781098307046
      }
    }
    Overrides {
      Name: "cs:Easy1"
      AssetReference {
        Id: 14105846682392511586
      }
    }
    Overrides {
      Name: "cs:Easy2"
      AssetReference {
        Id: 15711631619725028932
      }
    }
    Overrides {
      Name: "cs:Easy3"
      AssetReference {
        Id: 16861419497669969766
      }
    }
    Overrides {
      Name: "cs:Medium1"
      AssetReference {
        Id: 12492017513062569781
      }
    }
    Overrides {
      Name: "cs:Medium2"
      AssetReference {
        Id: 6517159487222686422
      }
    }
    Overrides {
      Name: "cs:Hard1"
      AssetReference {
        Id: 1145841258553866396
      }
    }
    Overrides {
      Name: "cs:Easy4"
      AssetReference {
        Id: 6503308286676705872
      }
    }
    Overrides {
      Name: "cs:Medium3"
      AssetReference {
        Id: 9874907162655133216
      }
    }
    Overrides {
      Name: "cs:HighestPoint:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:Timer:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:Multiplier:isrep"
      Bool: true
    }
    Overrides {
      Name: "cs:DefaultTime:isrep"
      Bool: true
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 15790839464349977474
    }
  }
}
Objects {
  Id: 17500267118785305668
  Name: "KillTriggers"
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
  ParentId: 15175674836964900114
  UnregisteredParameters {
    Overrides {
      Name: "cs:Stages"
      ObjectReference {
        SelfId: 15982721210424694492
      }
    }
    Overrides {
      Name: "cs:KillTriggerTemplate"
      AssetReference {
        Id: 12543943502602641628
      }
    }
    Overrides {
      Name: "cs:KillTriggersFolder"
      ObjectReference {
        SelfId: 11791051060374013180
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 9399744900880661553
    }
  }
}
Objects {
  Id: 4912965028443881405
  Name: "RotatingKillTriggers"
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
  ParentId: 15175674836964900114
  UnregisteredParameters {
    Overrides {
      Name: "cs:Stages"
      ObjectReference {
        SelfId: 15982721210424694492
      }
    }
    Overrides {
      Name: "cs:KillTriggerTemplate"
      AssetReference {
        Id: 12543943502602641628
      }
    }
    Overrides {
      Name: "cs:RotatingTriggersGroupTemplate"
      AssetReference {
        Id: 7497983890382644150
      }
    }
    Overrides {
      Name: "cs:RotatingKillTriggersFolder"
      ObjectReference {
        SelfId: 5816632853932079509
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 8006570875495817651
    }
  }
}
Objects {
  Id: 14213628339786308313
  Name: "Void"
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
  ParentId: 15175674836964900114
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 15941692642766571564
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 5321318700814843422
    }
  }
}
