Name: "Scripts"
RootId: 5956341128498661927
Objects {
  Id: 15175674836964900114
  Name: "DefaultContext"
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
  ParentId: 5956341128498661927
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "DefaultContext"
  }
}
Objects {
  Id: 3491459597106753331
  Name: "ClientContext"
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
  ParentId: 5956341128498661927
  ChildIds: 9069047461056434493
  ChildIds: 9804280624454184798
  ChildIds: 18383970641325659093
  ChildIds: 16926334222583715106
  ChildIds: 16395053381807188247
  ChildIds: 9767431827538914153
  ChildIds: 16822963512097900627
  ChildIds: 1559776241217782248
  ChildIds: 525328414140172264
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
}
Objects {
  Id: 525328414140172264
  Name: "User Interface"
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
  ParentId: 3491459597106753331
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "User Interface"
  }
}
Objects {
  Id: 1559776241217782248
  Name: "ResetCamera"
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
  ParentId: 3491459597106753331
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 12348250094343698496
    }
  }
}
Objects {
  Id: 16822963512097900627
  Name: "TrailsClient"
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
  ParentId: 3491459597106753331
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 13378266626184538641
    }
  }
}
Objects {
  Id: 9767431827538914153
  Name: "Tab"
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
  ParentId: 3491459597106753331
  UnregisteredParameters {
    Overrides {
      Name: "cs:PrefixTags"
      AssetReference {
        Id: 11610679453907326437
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
      Id: 7497063232876376234
    }
  }
}
Objects {
  Id: 16395053381807188247
  Name: "Music"
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
  ParentId: 3491459597106753331
  UnregisteredParameters {
    Overrides {
      Name: "cs:Stages"
      ObjectReference {
        SelfId: 15982721210424694492
      }
    }
    Overrides {
      Name: "cs:Music"
      ObjectReference {
        SelfId: 3171984804337714511
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
      Id: 10213823682619080079
    }
  }
}
Objects {
  Id: 16926334222583715106
  Name: "PlayerNameplates"
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
  ParentId: 3491459597106753331
  UnregisteredParameters {
    Overrides {
      Name: "cs:NameplateTemplate"
      AssetReference {
        Id: 182919275251591290
      }
    }
    Overrides {
      Name: "cs:PrefixTags"
      AssetReference {
        Id: 11610679453907326437
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
      Id: 11766488153883702952
    }
  }
}
Objects {
  Id: 18383970641325659093
  Name: "UserInterface"
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
  ParentId: 3491459597106753331
  UnregisteredParameters {
    Overrides {
      Name: "cs:UserInterface"
      ObjectReference {
        SelfId: 5713138847543765277
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
      Id: 17504478070772420553
    }
  }
}
Objects {
  Id: 9804280624454184798
  Name: "FluidUI"
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
  ParentId: 3491459597106753331
  UnregisteredParameters {
    Overrides {
      Name: "cs:HelpfulFunctions"
      AssetReference {
        Id: 751867494844461457
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
      Id: 2922524317104460515
    }
  }
}
Objects {
  Id: 9069047461056434493
  Name: "Debug"
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
  ParentId: 3491459597106753331
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 8888555072148867367
    }
  }
}
Objects {
  Id: 15304707610953764978
  Name: "ServerContext"
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
  ParentId: 5956341128498661927
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
    Type: Server
  }
}
