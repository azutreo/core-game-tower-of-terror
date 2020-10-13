Assets {
  Id: 6517159487222686422
  Name: "Medium2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15870449670620129607
      Objects {
        Id: 15870449670620129607
        Name: "Medium2"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17334572561032969538
        ChildIds: 1501484960816518567
        ChildIds: 4414482718536260882
        ChildIds: 9705858628749804833
        ChildIds: 8398023805514373852
        ChildIds: 2631707041880597537
        ChildIds: 11848961250854130701
        UnregisteredParameters {
          Overrides {
            Name: "cs:Color"
            Color {
              R: 0.745404482
              G: 0.309468955
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
        Id: 17334572561032969538
        Name: "Music"
        Transform {
          Location {
            Z: 750
          }
          Rotation {
          }
          Scale {
            X: 50
            Y: 50
            Z: 15
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
            Z: 1500
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 4414482718536260882
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
            Z: 1475
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 8398023805514373852
        Name: "KillTriggers"
        Transform {
          Location {
            Z: -65
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
        ChildIds: 5283230733264154210
        ChildIds: 3687955438796147282
        ChildIds: 3535783857697754619
        ChildIds: 2704907747484356872
        ChildIds: 15538877361955635445
        ChildIds: 16350748225067655458
        ChildIds: 140523197296351873
        ChildIds: 7375957522159764916
        ChildIds: 11995162707379360875
        ChildIds: 16086273482296542693
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
        Id: 5283230733264154210
        Name: "Kill"
        Transform {
          Location {
            X: -1500
            Y: -695
            Z: 80
          }
          Rotation {
          }
          Scale {
            X: 13
            Y: 6.00000048
            Z: 0.5
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 3687955438796147282
        Name: "Kill"
        Transform {
          Location {
            X: -1900
            Y: -107.056381
            Z: 80
          }
          Rotation {
          }
          Scale {
            X: 5
            Y: 2.25
            Z: 0.5
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 3535783857697754619
        Name: "Kill"
        Transform {
          Location {
            X: -1175
            Y: -263.127747
            Z: 80
          }
          Rotation {
          }
          Scale {
            X: 6.5
            Y: 2.7
            Z: 0.5
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 2704907747484356872
        Name: "Kill"
        Transform {
          Location {
            X: -376.158203
            Y: -245
            Z: 80
          }
          Rotation {
          }
          Scale {
            X: 5.5
            Y: 5
            Z: 0.5
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 15538877361955635445
        Name: "Kill"
        Transform {
          Location {
            X: -460
            Y: -820
            Z: 80
          }
          Rotation {
          }
          Scale {
            X: 7.85612679
            Y: 3.5
            Z: 0.5
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 16350748225067655458
        Name: "Kill"
        Transform {
          Location {
            X: 217.458008
            Y: -245
            Z: 65
          }
          Rotation {
          }
          Scale {
            X: 5.5
            Y: 5
            Z: 0.2
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 140523197296351873
        Name: "Kill"
        Transform {
          Location {
            X: 496.669067
            Y: -494.723572
            Z: 65
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 10
            Z: 0.2
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 7375957522159764916
        Name: "Kill"
        Transform {
          Location {
            X: 806.685547
            Y: -494.723572
            Z: 65
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 10
            Z: 0.2
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 11995162707379360875
        Name: "Kill"
        Transform {
          Location {
            X: 1103.44849
            Y: -494.723572
            Z: 65
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 10
            Z: 0.2
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
        Id: 16086273482296542693
        Name: "Kill"
        Transform {
          Location {
            X: 1425.979
            Y: -494.723572
            Z: 65
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 10
            Z: 0.2
          }
        }
        ParentId: 8398023805514373852
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
              R: 1
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
            Z: 750
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
            Z: 15
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
              R: 0.745404482
              G: 0.309468955
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
            Z: 15
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
              R: 0.745404482
              G: 0.309468955
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
            Z: 15
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
              R: 0.745404482
              G: 0.309468955
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
            Y: -2450
          }
          Rotation {
          }
          Scale {
            X: 21
            Y: 1
            Z: 15
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
              R: 0.745404482
              G: 0.309468955
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
            Y: -1732.41211
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 1
            Y: 21
            Z: 15
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
              R: 0.745404482
              G: 0.309468955
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
            X: -1732.41113
            Y: 1732.41211
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 21
            Y: 1
            Z: 15
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
              R: 0.745404482
              G: 0.309468955
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
            X: 1732.18652
            Y: 1732.41211
            Z: 0.391479492
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 1
            Y: 21
            Z: 15
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
              R: 0.745404482
              G: 0.309468955
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
            X: 1732.41113
            Y: -1732.41211
          }
          Rotation {
            Yaw: 44.9999924
          }
          Scale {
            X: 21
            Y: 1
            Z: 15
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
              R: 0.745404482
              G: 0.309468955
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
            Z: -65
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
        ChildIds: 10572373720707577101
        ChildIds: 1292360716758495025
        ChildIds: 8101035457554541032
        ChildIds: 686559842323522964
        ChildIds: 18314810071888143369
        ChildIds: 6986636382783540282
        ChildIds: 17639312296119355821
        ChildIds: 16378085591966318998
        ChildIds: 9000775352954242548
        ChildIds: 17741366868174436583
        ChildIds: 16604493720693152572
        ChildIds: 1855271474596631993
        ChildIds: 3003575878672829007
        ChildIds: 9353771850555169633
        ChildIds: 14668304374440581376
        ChildIds: 11648018883220900360
        ChildIds: 15484449403854039334
        ChildIds: 8144490392094240761
        ChildIds: 6195456151984767341
        ChildIds: 14202204232880417197
        ChildIds: 11256324535467957214
        ChildIds: 4854513735477244817
        ChildIds: 13305634990650607882
        ChildIds: 18376473287550828563
        ChildIds: 214160355154554058
        ChildIds: 15739292458351261921
        ChildIds: 8492740516075778563
        ChildIds: 13814372585949125069
        ChildIds: 17742408501243245902
        ChildIds: 6393632520599438425
        ChildIds: 8096855679732513716
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Obstacles"
        }
      }
      Objects {
        Id: 10572373720707577101
        Name: "Platform"
        Transform {
          Location {
            X: -1150
            Y: -495
            Z: 30
          }
          Rotation {
          }
          Scale {
            X: 20
            Y: 10
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 1292360716758495025
        Name: "Platform"
        Transform {
          Location {
            X: 850
            Y: -495
            Z: 30
          }
          Rotation {
          }
          Scale {
            X: 20
            Y: 10
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 8101035457554541032
        Name: "Platform"
        Transform {
          Location {
            X: 2000
            Y: -900
            Z: 65
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 686559842323522964
        Name: "Platform"
        Transform {
          Location {
            X: 2150
            Y: -600
            Z: 115
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 18314810071888143369
        Name: "Platform"
        Transform {
          Location {
            X: 2250
            Y: -350
            Z: 165
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 6986636382783540282
        Name: "Platform"
        Transform {
          Location {
            X: 2250
            Y: -100
            Z: 215
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 17639312296119355821
        Name: "Platform"
        Transform {
          Location {
            X: 2200
            Y: 200
            Z: 265.000092
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 16378085591966318998
        Name: "Platform"
        Transform {
          Location {
            X: 2150
            Y: 500
            Z: 315
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 9000775352954242548
        Name: "Platform"
        Transform {
          Location {
            X: 2050
            Y: 800
            Z: 365
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 17741366868174436583
        Name: "Platform"
        Transform {
          Location {
            X: 1800
            Y: 1000
            Z: 415
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 16604493720693152572
        Name: "Platform"
        Transform {
          Location {
            X: 1550
            Y: 750
            Z: 465
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 1855271474596631993
        Name: "Platform"
        Transform {
          Location {
            X: 1250
            Y: 600
            Z: 515
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 3003575878672829007
        Name: "Platform"
        Transform {
          Location {
            X: 1050
            Y: 850
            Z: 565
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 9353771850555169633
        Name: "Platform"
        Transform {
          Location {
            X: 750
            Y: 750
            Z: 615
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 14668304374440581376
        Name: "Platform"
        Transform {
          Location {
            X: 450
            Y: 500
            Z: 714.999939
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 11648018883220900360
        Name: "Platform"
        Transform {
          Location {
            X: 150
            Y: 200
            Z: 765
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 15484449403854039334
        Name: "Platform"
        Transform {
          Location {
            X: -50
            Y: 450
            Z: 815
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 8144490392094240761
        Name: "Platform"
        Transform {
          Location {
            X: -150
            Y: 750
            Z: 865
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 6195456151984767341
        Name: "Platform"
        Transform {
          Location {
            X: -50
            Y: 1050
            Z: 915
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 14202204232880417197
        Name: "Platform"
        Transform {
          Location {
            X: -300
            Y: 1350
            Z: 965
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 11256324535467957214
        Name: "Platform"
        Transform {
          Location {
            X: -600
            Y: 1550
            Z: 1015
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 4854513735477244817
        Name: "Platform"
        Transform {
          Location {
            X: -950
            Y: 1500
            Z: 1065
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 13305634990650607882
        Name: "Platform"
        Transform {
          Location {
            X: -1200
            Y: 1300
            Z: 1115
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 18376473287550828563
        Name: "Platform"
        Transform {
          Location {
            X: -1050
            Y: 1000
            Z: 1165
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 214160355154554058
        Name: "Platform"
        Transform {
          Location {
            X: -1200
            Y: 600
            Z: 1265
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 15739292458351261921
        Name: "Platform"
        Transform {
          Location {
            X: -1550
            Y: 650
            Z: 1315
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 8492740516075778563
        Name: "Platform"
        Transform {
          Location {
            X: -1650
            Y: 950
            Z: 1365
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 13814372585949125069
        Name: "Platform"
        Transform {
          Location {
            X: -1950
            Y: 1100
            Z: 1415
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 17742408501243245902
        Name: "Platform"
        Transform {
          Location {
            X: -1950
            Y: 750
            Z: 1465
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 6393632520599438425
        Name: "Platform"
        Transform {
          Location {
            X: -2000
            Y: 400
            Z: 1515
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
        Id: 8096855679732513716
        Name: "Platform"
        Transform {
          Location {
            X: -950
            Y: 700
            Z: 1215
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
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
              R: 0.745404482
              G: 0.309468955
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
