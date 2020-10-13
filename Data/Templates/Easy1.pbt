Assets {
  Id: 14105846682392511586
  Name: "Easy1"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15870449670620129607
      Objects {
        Id: 15870449670620129607
        Name: "Easy1"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 971241021404972715
        ChildIds: 1501484960816518567
        ChildIds: 4974332807820054512
        ChildIds: 6442783907571437735
        ChildIds: 2631707041880597537
        ChildIds: 11848961250854130701
        UnregisteredParameters {
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.300543845
              G: 0.701102138
              B: 1
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
        Id: 971241021404972715
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
              G: 0.701102138
              B: 1
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
        Id: 4974332807820054512
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
        Id: 6442783907571437735
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
              G: 0.701102138
              B: 1
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
        Id: 2631707041880597537
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
              R: 0.3
              G: 0.7
              B: 1
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
              R: 0.3
              G: 0.7
              B: 1
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
              R: 0.3
              G: 0.7
              B: 1
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
              R: 0.3
              G: 0.7
              B: 1
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
            X: -1732.41211
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
              R: 0.3
              G: 0.7
              B: 1
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
            X: -1732.41162
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
              R: 0.3
              G: 0.7
              B: 1
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
            X: 1732.41162
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
              R: 0.3
              G: 0.7
              B: 1
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
            X: 1732.41162
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
              R: 0.3
              G: 0.7
              B: 1
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
        ChildIds: 9657921468868051243
        ChildIds: 8360642980990047570
        ChildIds: 13806162256802207033
        ChildIds: 11127184723099713440
        ChildIds: 7406132485683395919
        ChildIds: 17262360179309930685
        ChildIds: 10866311316283096390
        ChildIds: 8721852032151454947
        ChildIds: 5176629979485304430
        ChildIds: 464281659278587636
        ChildIds: 9696148713821080101
        ChildIds: 7136137054867966776
        ChildIds: 3516385924894319793
        ChildIds: 1756272516030658102
        ChildIds: 14746349095071726289
        ChildIds: 17501481957241387510
        ChildIds: 14740482529340262014
        ChildIds: 13260784161203937640
        ChildIds: 13426607495448135002
        ChildIds: 14522004724879036037
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
        Id: 9657921468868051243
        Name: "Platform"
        Transform {
          Location {
            X: -1850
            Y: -600
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 8360642980990047570
        Name: "Platform"
        Transform {
          Location {
            X: -1400
            Y: -750
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 13806162256802207033
        Name: "Platform"
        Transform {
          Location {
            X: -1000
            Y: -950
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 11127184723099713440
        Name: "Platform"
        Transform {
          Location {
            X: -550
            Y: -600
            Z: 200
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 7406132485683395919
        Name: "Platform"
        Transform {
          Location {
            X: -150
            Y: -950
            Z: 250
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 17262360179309930685
        Name: "Platform"
        Transform {
          Location {
            X: 200
            Y: -1300
            Z: 300
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 10866311316283096390
        Name: "Platform"
        Transform {
          Location {
            X: 550
            Y: -1050
            Z: 350
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 8721852032151454947
        Name: "Platform"
        Transform {
          Location {
            X: 1400
            Y: -700
            Z: 400
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 5176629979485304430
        Name: "Platform"
        Transform {
          Location {
            X: 1700
            Y: -350
            Z: 450
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 464281659278587636
        Name: "Platform"
        Transform {
          Location {
            X: 1600
            Y: 100
            Z: 500.000214
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 9696148713821080101
        Name: "Platform"
        Transform {
          Location {
            X: 1300
            Y: 550
            Z: 550
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 7136137054867966776
        Name: "Platform"
        Transform {
          Location {
            X: 1050
            Y: 950
            Z: 600
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 3516385924894319793
        Name: "Platform"
        Transform {
          Location {
            X: 700
            Y: 1200
            Z: 650
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 1756272516030658102
        Name: "Platform"
        Transform {
          Location {
            X: 300
            Y: 1350
            Z: 700
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 14746349095071726289
        Name: "Platform"
        Transform {
          Location {
            X: -150
            Y: 1500
            Z: 750
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 17501481957241387510
        Name: "Platform"
        Transform {
          Location {
            X: -1400
            Y: 1150
            Z: 900
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 14740482529340262014
        Name: "Platform"
        Transform {
          Location {
            X: -1850
            Y: 900
            Z: 950
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 13260784161203937640
        Name: "Platform"
        Transform {
          Location {
            X: -550
            Y: 1600
            Z: 800
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 13426607495448135002
        Name: "Platform"
        Transform {
          Location {
            X: -1000
            Y: 1500
            Z: 850
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
              R: 0.3
              G: 0.7
              B: 1
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
        Id: 14522004724879036037
        Name: "Platform"
        Transform {
          Location {
            X: 1000
            Y: -950
            Z: 350
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
              R: 0.3
              G: 0.7
              B: 1
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
  SerializationVersion: 65
}
