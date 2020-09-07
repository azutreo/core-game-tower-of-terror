Name: "Scenes"
RootId: 11896748406750712304
Objects {
  Id: 15941692642766571564
  Name: "Void"
  Transform {
    Location {
      Z: -1000
    }
    Rotation {
    }
    Scale {
      X: 1000
      Y: 1000
      Z: 1
    }
  }
  ParentId: 11896748406750712304
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 15982721210424694492
  Name: "Stages"
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
  ParentId: 11896748406750712304
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Stages_1"
  }
}
Objects {
  Id: 5816632853932079509
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
  ParentId: 11896748406750712304
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "RotatingKillTriggers"
  }
}
Objects {
  Id: 11791051060374013180
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
  ParentId: 11896748406750712304
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "KillTriggers"
  }
}
Objects {
  Id: 265058703057545237
  Name: "Ending"
  Transform {
    Location {
      X: -8000
      Z: -1000
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11896748406750712304
  ChildIds: 13793655747624387068
  ChildIds: 1475150547157731517
  ChildIds: 2587558781098307046
  ChildIds: 6466217345248988778
  ChildIds: 10969361811353390143
  ChildIds: 16873904351856601164
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
    Type: RuntimeStatic
  }
}
Objects {
  Id: 16873904351856601164
  Name: "Walls"
  Transform {
    Location {
      Z: 1000
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 265058703057545237
  ChildIds: 3291039173927603267
  ChildIds: 11356182312660128272
  ChildIds: 15518901914921960985
  ChildIds: 3550526259682732999
  ChildIds: 15866424866316888420
  ChildIds: 17930784669908589470
  ChildIds: 11635790513815951004
  ChildIds: 2321959408616042091
  ChildIds: 1550138683372753070
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 1550138683372753070
  Name: "Wall"
  Transform {
    Location {
      X: 1639.68115
      Y: 1605.97388
      Z: 557.484131
    }
    Rotation {
      Pitch: 22.523613
      Yaw: 40.8068542
      Roll: -10.8358154
    }
    Scale {
      X: 2.5
      Y: 21
      Z: 0.25
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 2321959408616042091
  Name: "Wall"
  Transform {
    Location {
      X: 1732.41162
      Y: -1732.41187
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 21
      Y: 1
      Z: 20
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 11635790513815951004
  Name: "Wall"
  Transform {
    Location {
      X: 1732.41162
      Y: 1732.4115
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 1
      Y: 21
      Z: 20
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 17930784669908589470
  Name: "Wall"
  Transform {
    Location {
      X: -1732.41113
      Y: 1732.41187
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 21
      Y: 1
      Z: 20
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 15866424866316888420
  Name: "Wall"
  Transform {
    Location {
      X: -1732.41211
      Y: -1732.41138
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 1
      Y: 21
      Z: 20
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 3550526259682732999
  Name: "Wall"
  Transform {
    Location {
      Y: -2450.00024
    }
    Rotation {
    }
    Scale {
      X: 21
      Y: 1
      Z: 20
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 15518901914921960985
  Name: "Wall"
  Transform {
    Location {
      Y: 2450
    }
    Rotation {
    }
    Scale {
      X: 21
      Y: 1
      Z: 20
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 11356182312660128272
  Name: "Wall"
  Transform {
    Location {
      X: 2450
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 21
      Z: 20
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 3291039173927603267
  Name: "Wall"
  Transform {
    Location {
      X: -2450
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 21
      Z: 20
    }
  }
  ParentId: 16873904351856601164
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 10969361811353390143
  Name: "Ramps"
  Transform {
    Location {
      X: -810
      Y: -2030
      Z: 168.801514
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 265058703057545237
  ChildIds: 11268373224371347265
  ChildIds: 4082221811033770544
  ChildIds: 3770294103381638025
  ChildIds: 4423494315207202198
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 4423494315207202198
  Name: "Ramp"
  Transform {
    Location {
      X: 3094.07275
      Y: 2003.1001
      Z: 1023.11926
    }
    Rotation {
      Pitch: 15.0190725
      Yaw: -2.71167016
      Roll: -10.3577108
    }
    Scale {
      X: 2.5
      Y: 21
      Z: 0.25
    }
  }
  ParentId: 10969361811353390143
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 3770294103381638025
  Name: "Ramp"
  Transform {
    Location {
      X: 2404.82959
      Y: 398.580078
      Z: 667.849487
    }
    Rotation {
      Pitch: 9.99998379
      Yaw: 44.9999084
      Roll: 11.7750578
    }
    Scale {
      X: 21
      Y: 2.5
      Z: 0.25
    }
  }
  ParentId: 10969361811353390143
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 4082221811033770544
  Name: "Ramp"
  Transform {
    Location {
      X: 810
      Y: -245.440918
      Z: 334.963318
    }
    Rotation {
      Pitch: 9.99999714
      Roll: 7.00000715
    }
    Scale {
      X: 21
      Y: 2.5
      Z: 0.25
    }
  }
  ParentId: 10969361811353390143
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 11268373224371347265
  Name: "Ramp"
  Transform {
    Location {
      X: -799.564453
      Y: 420.435669
    }
    Rotation {
      Yaw: 44.9999733
      Roll: 10.0000591
    }
    Scale {
      X: 2.5
      Y: 21
      Z: 0.25
    }
  }
  ParentId: 10969361811353390143
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 6466217345248988778
  Name: "Claim"
  Transform {
    Location {
      X: -104.388184
      Y: 1698.12622
      Z: 1742.31934
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 265058703057545237
  ChildIds: 13312109292227458429
  ChildIds: 16586915414338258037
  ChildIds: 10217039763738385867
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 10217039763738385867
  Name: "Cone - Truncated Hollow Thick"
  Transform {
    Location {
      Z: 12.9365234
    }
    Rotation {
    }
    Scale {
      X: 2.99999976
      Y: 2.99999976
      Z: 1
    }
  }
  ParentId: 6466217345248988778
  ChildIds: 1185696136016431052
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 329085918321373206
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.25015837
        G: 0.25015837
        B: 0.25015837
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 9427532279906732276
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 1185696136016431052
  Name: "World Text"
  Transform {
    Location {
      Z: 228.356384
    }
    Rotation {
      Yaw: 55.4551353
    }
    Scale {
      X: 2
      Y: 1
      Z: 4
    }
  }
  ParentId: 10217039763738385867
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Text {
    Text: "CLAIM VICTORY"
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:center"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:center"
    }
  }
}
Objects {
  Id: 16586915414338258037
  Name: "Pipe"
  Transform {
    Location {
      Z: 135.68457
    }
    Rotation {
    }
    Scale {
      X: 2.49999976
      Y: 2.49999976
      Z: 0.09
    }
  }
  ParentId: 6466217345248988778
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12827530473249900764
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 14127835960134546133
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 13312109292227458429
  Name: "Platform"
  Transform {
    Location {
      X: 104.388184
      Y: 206.293213
    }
    Rotation {
    }
    Scale {
      X: 21
      Y: 10
      Z: 0.25
    }
  }
  ParentId: 6466217345248988778
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.25015837
        G: 0.25015837
        B: 0.25015837
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 2587558781098307046
  Name: "ThunderSquids"
  Transform {
    Location {
      X: -104.388184
      Y: 1698.12598
      Z: 2000.95313
    }
    Rotation {
    }
    Scale {
      X: 2.5
      Y: 2.5
      Z: 5
    }
  }
  ParentId: 265058703057545237
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 1475150547157731517
  Name: "Checkpoint"
  Transform {
    Location {
      X: -2275
      Z: 125
    }
    Rotation {
    }
    Scale {
      X: 2.5
      Y: 19.9
      Z: 2.5
    }
  }
  ParentId: 265058703057545237
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 13793655747624387068
  Name: "Top"
  Transform {
    Location {
      Z: 2000
    }
    Rotation {
    }
    Scale {
      X: 50
      Y: 50
      Z: 1
    }
  }
  ParentId: 265058703057545237
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 17304044847364272684
  Name: "Beginning"
  Transform {
    Location {
      Z: -1000
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11896748406750712304
  ChildIds: 12071952504987820024
  ChildIds: 14056670889509956070
  ChildIds: 17676383190775929384
  ChildIds: 13078768313839887563
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 13078768313839887563
  Name: "Spawns"
  Transform {
    Location {
      X: -2312.76904
      Z: 1117.55298
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17304044847364272684
  ChildIds: 2509127499410674485
  ChildIds: 374000118842240885
  ChildIds: 13691309789647842774
  ChildIds: 17825507741614038427
  ChildIds: 17094840522493475035
  ChildIds: 8438068850575850881
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 8438068850575850881
  Name: "Spawn"
  Transform {
    Location {
      X: -1
      Y: -300
      Z: -5
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13078768313839887563
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  PlayerSpawnPoint {
    TeamInt: 1
  }
}
Objects {
  Id: 17094840522493475035
  Name: "Spawn"
  Transform {
    Location {
      X: -1
      Y: -179
      Z: -5
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13078768313839887563
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  PlayerSpawnPoint {
    TeamInt: 1
  }
}
Objects {
  Id: 17825507741614038427
  Name: "Spawn"
  Transform {
    Location {
      X: -1
      Y: -59
      Z: -5
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13078768313839887563
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  PlayerSpawnPoint {
    TeamInt: 1
  }
}
Objects {
  Id: 13691309789647842774
  Name: "Spawn"
  Transform {
    Location {
      X: -1
      Y: 59
      Z: -5
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13078768313839887563
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  PlayerSpawnPoint {
    TeamInt: 1
  }
}
Objects {
  Id: 374000118842240885
  Name: "Spawn"
  Transform {
    Location {
      X: -1
      Y: 300
      Z: -5
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13078768313839887563
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  PlayerSpawnPoint {
    TeamInt: 1
  }
}
Objects {
  Id: 2509127499410674485
  Name: "Spawn"
  Transform {
    Location {
      X: -1
      Y: 179
      Z: -5
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13078768313839887563
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  PlayerSpawnPoint {
    TeamInt: 1
  }
}
Objects {
  Id: 17676383190775929384
  Name: "Walls"
  Transform {
    Location {
      Z: 500
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17304044847364272684
  ChildIds: 4084533167660926719
  ChildIds: 13163891505632278984
  ChildIds: 6509751833184306257
  ChildIds: 6811332811792824170
  ChildIds: 1429761414737123232
  ChildIds: 4805488182000928139
  ChildIds: 12092631509572138994
  ChildIds: 16881565189025708381
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 16881565189025708381
  Name: "Wall"
  Transform {
    Location {
      X: 1732.4115
      Y: -1732.41187
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 21
      Y: 1
      Z: 10
    }
  }
  ParentId: 17676383190775929384
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 12092631509572138994
  Name: "Wall"
  Transform {
    Location {
      X: 1732.41174
      Y: 1732.4115
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 1
      Y: 21
      Z: 10
    }
  }
  ParentId: 17676383190775929384
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 4805488182000928139
  Name: "Wall"
  Transform {
    Location {
      X: -1732.4115
      Y: 1732.41187
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 21
      Y: 1
      Z: 10
    }
  }
  ParentId: 17676383190775929384
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 1429761414737123232
  Name: "Wall"
  Transform {
    Location {
      X: -1732.41187
      Y: -1732.41138
    }
    Rotation {
      Yaw: 44.9999924
    }
    Scale {
      X: 1
      Y: 21
      Z: 10
    }
  }
  ParentId: 17676383190775929384
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 6811332811792824170
  Name: "Wall"
  Transform {
    Location {
      Y: -2450.00024
    }
    Rotation {
    }
    Scale {
      X: 21
      Y: 1
      Z: 10
    }
  }
  ParentId: 17676383190775929384
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 6509751833184306257
  Name: "Wall"
  Transform {
    Location {
      Y: 2450
    }
    Rotation {
    }
    Scale {
      X: 21
      Y: 1
      Z: 10
    }
  }
  ParentId: 17676383190775929384
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 13163891505632278984
  Name: "Wall"
  Transform {
    Location {
      X: 2450
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 21
      Z: 10
    }
  }
  ParentId: 17676383190775929384
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 4084533167660926719
  Name: "Wall"
  Transform {
    Location {
      X: -2450
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 21
      Z: 10
    }
  }
  ParentId: 17676383190775929384
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 14056670889509956070
  Name: "Platform"
  Transform {
    Location {
      X: -2275
      Z: 975
    }
    Rotation {
    }
    Scale {
      X: 2.5
      Y: 19.9
      Z: 0.5
    }
  }
  ParentId: 17304044847364272684
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
Objects {
  Id: 12071952504987820024
  Name: "Top"
  Transform {
    Location {
      Z: 1000
    }
    Rotation {
    }
    Scale {
      X: 50
      Y: 50
      Z: 1
    }
  }
  ParentId: 17304044847364272684
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 13012250017678901955
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
}
