Assets {
  Id: 15711631619725028932
  Name: "Easy2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15870449670620129607
      Objects {
        Id: 15870449670620129607
        Name: "Easy2"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15982721210424694492
        ChildIds: 9186536392354219609
        ChildIds: 9137827098544000433
        ChildIds: 9705858628749804833
        ChildIds: 1501484960816518567
        ChildIds: 2631707041880597537
        ChildIds: 11848961250854130701
        UnregisteredParameters {
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.300543845
              G: 1
              B: 0.300543845
              A: 1
            }
          }
        }
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
        Id: 9186536392354219609
        Name: "Music"
        Transform {
          Location {
            Z: 500
          }
          Rotation {
          }
          Scale {
            X: 50
            Y: 50
            Z: 10
          }
        }
        ParentId: 15870449670620129607
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
        Id: 9137827098544000433
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
        ParentId: 15870449670620129607
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
        Id: 9705858628749804833
        Name: "TransitionPlatform"
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
        ParentId: 15870449670620129607
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 1501484960816518567
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
        ParentId: 15870449670620129607
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
              R: 0.300543845
              G: 1
              B: 0.300543845
              A: 1
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2631707041880597537
        Name: "Walls"
        Transform {
          Location {
            Z: 450
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15870449670620129607
        ChildIds: 14254030911949274916
        ChildIds: 12350893469249211150
        ChildIds: 13434896811380878689
        ChildIds: 4833142626488921075
        ChildIds: 4401011756756237387
        ChildIds: 2009599922820038958
        ChildIds: 11209560970391991609
        ChildIds: 17636349612360033865
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
        Id: 14254030911949274916
        Name: "Wall"
        Transform {
          Location {
            X: -2450
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 21
            Z: 10
          }
        }
        ParentId: 2631707041880597537
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 12350893469249211150
        Name: "Wall"
        Transform {
          Location {
            X: 2450
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 21
            Z: 10
          }
        }
        ParentId: 2631707041880597537
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 13434896811380878689
        Name: "Wall"
        Transform {
          Location {
            Y: 2450
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 21
            Y: 1
            Z: 10
          }
        }
        ParentId: 2631707041880597537
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 4833142626488921075
        Name: "Wall"
        Transform {
          Location {
            Y: -2450.00024
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 21
            Y: 1
            Z: 10
          }
        }
        ParentId: 2631707041880597537
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 4401011756756237387
        Name: "Wall"
        Transform {
          Location {
            X: -1732.41187
            Y: -1732.41138
            Z: 50
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
        ParentId: 2631707041880597537
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 2009599922820038958
        Name: "Wall"
        Transform {
          Location {
            X: -1732.4115
            Y: 1732.41187
            Z: 50
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
        ParentId: 2631707041880597537
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 11209560970391991609
        Name: "Wall"
        Transform {
          Location {
            X: 1732.41174
            Y: 1732.4115
            Z: 50
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
        ParentId: 2631707041880597537
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 17636349612360033865
        Name: "Wall"
        Transform {
          Location {
            X: 1732.4115
            Y: -1732.41187
            Z: 50
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
        ParentId: 2631707041880597537
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
        Id: 11848961250854130701
        Name: "Obstacles"
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
        ParentId: 15870449670620129607
        ChildIds: 7372872310981285333
        ChildIds: 3891204780961442062
        ChildIds: 17091721937360038813
        ChildIds: 3526348196408022190
        ChildIds: 14549715859602242285
        ChildIds: 6866624732345544981
        ChildIds: 5963641153271165707
        ChildIds: 7600220436691293780
        ChildIds: 9455953919619980153
        ChildIds: 7838399544635319050
        ChildIds: 4115221028808067169
        ChildIds: 2883149667391247783
        ChildIds: 5761308150305490431
        ChildIds: 4297418346095400650
        ChildIds: 13074056077674140706
        ChildIds: 6278085368322118408
        ChildIds: 1706018740187649384
        ChildIds: 13397985874925573736
        ChildIds: 11584436072062704086
        ChildIds: 267857372021782416
        ChildIds: 1832012332744355116
        ChildIds: 15171349138081257124
        ChildIds: 9804539176894790173
        ChildIds: 6705941959946832167
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 7372872310981285333
        Name: "Platform"
        Transform {
          Location {
            X: 2350
            Y: 395
            Z: 220.118042
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 12
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3891204780961442062
        Name: "Platform"
        Transform {
          Location {
            X: -1900
            Y: -600
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 17091721937360038813
        Name: "Platform"
        Transform {
          Location {
            X: 2105.5918
            Y: 1252.88489
            Z: 286.205688
          }
          Rotation {
            Yaw: -45
            Roll: 1.87311944e-05
          }
          Scale {
            X: 4
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3526348196408022190
        Name: "Platform"
        Transform {
          Location {
            X: 1652.44824
            Y: 1706.02795
            Z: 346.554688
          }
          Rotation {
            Yaw: -45
            Roll: 1.87311944e-05
          }
          Scale {
            X: 4
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14549715859602242285
        Name: "Platform"
        Transform {
          Location {
            X: 1208.81934
            Y: 2149.65552
            Z: 403.150055
          }
          Rotation {
            Yaw: -45
            Roll: 1.87311944e-05
          }
          Scale {
            X: 4
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6866624732345544981
        Name: "Platform"
        Transform {
          Location {
            X: 704.527344
            Y: 2375
            Z: 455.474335
          }
          Rotation {
            Roll: 1.87311944e-05
          }
          Scale {
            X: 3
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5963641153271165707
        Name: "Platform"
        Transform {
          Location {
            X: 220.148438
            Y: 2375
            Z: 504.519592
          }
          Rotation {
            Roll: 1.87311944e-05
          }
          Scale {
            X: 3
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 7600220436691293780
        Name: "Platform"
        Transform {
          Location {
            X: -274.932617
            Y: 2375
            Z: 560.455078
          }
          Rotation {
            Roll: 1.87311944e-05
          }
          Scale {
            X: 3
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9455953919619980153
        Name: "Platform"
        Transform {
          Location {
            X: -1116.18359
            Y: 2242.23242
            Z: 653.035278
          }
          Rotation {
            Yaw: 44.9999924
            Roll: 1.87311944e-05
          }
          Scale {
            X: 2
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 7838399544635319050
        Name: "Platform"
        Transform {
          Location {
            X: -771.619141
            Y: 2375
            Z: 608.577576
          }
          Rotation {
            Roll: 1.87311944e-05
          }
          Scale {
            X: 3
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4115221028808067169
        Name: "Platform"
        Transform {
          Location {
            X: -1337.75391
            Y: 2020.66211
            Z: 708.419617
          }
          Rotation {
            Yaw: 44.9999924
            Roll: 1.87311944e-05
          }
          Scale {
            X: 2
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2883149667391247783
        Name: "Platform"
        Transform {
          Location {
            X: -1556.96973
            Y: 1801.44629
            Z: 752.902405
          }
          Rotation {
            Yaw: 44.9999924
            Roll: 1.87311944e-05
          }
          Scale {
            X: 2
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 5761308150305490431
        Name: "Platform"
        Transform {
          Location {
            X: -1775.10254
            Y: 1583.31335
            Z: 803.822571
          }
          Rotation {
            Yaw: 44.9999924
            Roll: 1.87311944e-05
          }
          Scale {
            X: 2
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4297418346095400650
        Name: "Platform"
        Transform {
          Location {
            X: -1988.17285
            Y: 1370.24329
            Z: 854.755127
          }
          Rotation {
            Yaw: 44.9999924
            Roll: 1.87311944e-05
          }
          Scale {
            X: 2
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13074056077674140706
        Name: "Platform"
        Transform {
          Location {
            X: -2202.13574
            Y: 1156.28052
            Z: 912.810669
          }
          Rotation {
            Yaw: 44.9999924
            Roll: 1.87311944e-05
          }
          Scale {
            X: 2
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6278085368322118408
        Name: "Platform"
        Transform {
          Location {
            X: -1500
            Y: -850
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 1706018740187649384
        Name: "Platform"
        Transform {
          Location {
            X: -1150
            Y: -450
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13397985874925573736
        Name: "Platform"
        Transform {
          Location {
            X: -700
            Y: -200
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11584436072062704086
        Name: "Platform"
        Transform {
          Location {
            X: -250
            Y: -600
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 267857372021782416
        Name: "Platform"
        Transform {
          Location {
            X: 200
            Y: -300
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 1832012332744355116
        Name: "Platform"
        Transform {
          Location {
            X: 650
            Y: -50
            Z: 100
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15171349138081257124
        Name: "Platform"
        Transform {
          Location {
            X: 1100
            Y: -300
            Z: 150
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9804539176894790173
        Name: "Platform"
        Transform {
          Location {
            X: 1550
            Y: -400
            Z: 150
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6705941959946832167
        Name: "Platform"
        Transform {
          Location {
            X: 2050
            Y: -150
            Z: 150.000366
          }
          Rotation {
          }
          Scale {
            X: 3
            Y: 3
            Z: 0.5
          }
        }
        ParentId: 11848961250854130701
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
              R: 0.300543845
              G: 1
              B: 0.300543845
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
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 62
}
