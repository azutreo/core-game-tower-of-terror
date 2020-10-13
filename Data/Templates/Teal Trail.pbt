Assets {
  Id: 11629638659224415391
  Name: "Teal Trail"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 439585122638416000
      Objects {
        Id: 439585122638416000
        Name: "Teal Trail"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 3
          }
          Overrides {
            Name: "bp:color"
            Color {
              G: 0.98
              B: 0.941059649
              A: 1
            }
          }
          Overrides {
            Name: "bp:ColorB"
            Color {
              G: 0.98
              B: 0.941059649
              A: 1
            }
          }
          Overrides {
            Name: "bp:ColorC"
            Color {
              G: 0.98
              B: 0.941059649
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 10
          }
          Overrides {
            Name: "bp:Life"
            Float: 2
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 13314000148938821048
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
      }
    }
    Assets {
      Id: 13314000148938821048
      Name: "Basic Projectile Trail VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_basic_projectile_trail"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 65
}
