Name: "DefaultContext"
RootId: 12415301762595871748
Objects {
  Id: 9533959023410160350
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
  ParentId: 12415301762595871748
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 8516590172781741529
    }
  }
}
Objects {
  Id: 9839007225485222157
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
  ParentId: 12415301762595871748
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 1860856796969384327
    }
  }
}
Objects {
  Id: 10827889058066236652
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
  ParentId: 12415301762595871748
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 5732132787429927121
    }
  }
}
Objects {
  Id: 9232402496868625781
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
  ParentId: 12415301762595871748
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
        SelfId: 6446456844478146891
      }
    }
    Overrides {
      Name: "cs:ThunderSquids"
      ObjectReference {
        SelfId: 7249686109617495679
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
      Name: "cs:Frozen"
      ObjectReference {
        SelfId: 817432592110793327
      }
    }
    Overrides {
      Name: "cs:PlayerSettings"
      ObjectReference {
        SelfId: 6486151534420972194
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 15790839464349977474
    }
  }
}
Objects {
  Id: 17001886831832281670
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
  ParentId: 12415301762595871748
  UnregisteredParameters {
    Overrides {
      Name: "cs:Stages"
      ObjectReference {
        SelfId: 4000623932255704485
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
        SelfId: 5909215613371275112
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 9399744900880661553
    }
  }
}
Objects {
  Id: 2379855735152743654
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
  ParentId: 12415301762595871748
  UnregisteredParameters {
    Overrides {
      Name: "cs:Stages"
      ObjectReference {
        SelfId: 4000623932255704485
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
        SelfId: 10598122044902483056
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 8006570875495817651
    }
  }
}
Objects {
  Id: 15344045674213321396
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
  ParentId: 12415301762595871748
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 1158853007962726034
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 5321318700814843422
    }
  }
}
