Assets {
  Id: 7841497720478154622
  Name: "FluidUI"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11848559508315944060
      Objects {
        Id: 11848559508315944060
        Name: "FluidUI"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12670911876597133733
        ChildIds: 7549695861099009217
        UnregisteredParameters {
        }
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
        Id: 12670911876597133733
        Name: "Fluid UI Demo"
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
        ParentId: 11848559508315944060
        ChildIds: 10469861727923669081
        ChildIds: 13719796678770686922
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
        Id: 10469861727923669081
        Name: "TestUI"
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
        ParentId: 12670911876597133733
        UnregisteredParameters {
          Overrides {
            Name: "cs:Grid"
            ObjectReference {
              SubObjectId: 18351572741711265261
            }
          }
          Overrides {
            Name: "cs:GridChild"
            AssetReference {
              Id: 14574923776439154686
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
            Id: 1463874734548970157
          }
        }
      }
      Objects {
        Id: 13719796678770686922
        Name: "Container"
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
        ParentId: 12670911876597133733
        ChildIds: 4863714693364555409
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 4863714693364555409
        Name: "Content"
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
        ParentId: 13719796678770686922
        ChildIds: 2398272615711345990
        ChildIds: 18351572741711265261
        ChildIds: 16403221443756202087
        UnregisteredParameters {
          Overrides {
            Name: "cs:Size"
            Vector4 {
              Z: 400
              W: 400
            }
          }
          Overrides {
            Name: "cs:AspectRatio"
            Float: 1.05
          }
          Overrides {
            Name: "cs:AspectRatioYAxisDominant"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 400
          Height: 400
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
            }
            Color {
              A: 0.995000064
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 2398272615711345990
        Name: "List"
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
        ParentId: 4863714693364555409
        UnregisteredParameters {
          Overrides {
            Name: "cs:Size"
            Vector4 {
              X: 1
              Y: 1
              Z: -20
              W: -20
            }
          }
          Overrides {
            Name: "cs:ListSize"
            Vector2 {
              X: 0.1
            }
          }
          Overrides {
            Name: "cs:ListGap"
            Int: 8
          }
          Overrides {
            Name: "cs:ListFillHorizontal"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 500
          Height: 500
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          ScrollPanel {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 18351572741711265261
        Name: "Grid"
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
        ParentId: 4863714693364555409
        UnregisteredParameters {
          Overrides {
            Name: "cs:Size"
            Vector4 {
              X: 1
              Y: 1
              Z: -18
              W: -20
            }
          }
          Overrides {
            Name: "cs:Position"
            Vector4 {
              Z: 2
            }
          }
          Overrides {
            Name: "cs:GridCount"
            Vector2 {
              X: 4
              Y: 4
            }
          }
          Overrides {
            Name: "cs:GridGap"
            Vector2 {
              X: 8
              Y: 8
            }
          }
          Overrides {
            Name: "cs:GridPadding"
            Vector4 {
              Z: 20
            }
          }
          Overrides {
            Name: "cs:GridFillVertical"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 500
          Height: 500
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          ScrollPanel {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 16403221443756202087
        Name: "TestText"
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
        ParentId: 4863714693364555409
        UnregisteredParameters {
          Overrides {
            Name: "cs:Size"
            Vector4 {
              X: 1
              Y: 0.25
              W: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 200
          Height: 40
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Label: "Text"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
            Size: 20
            Justification {
              Value: "mc:etextjustify:center"
            }
            AutoWrapText: true
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 7549695861099009217
        Name: "Scripts"
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
        ParentId: 11848559508315944060
        ChildIds: 7983163364678761568
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
        Id: 7983163364678761568
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
        ParentId: 7549695861099009217
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
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "FluidUI, created by Nicholas Foreman (nforeman)\r\nThumbnail created by John Shoff (FearTheDev)\r\n\r\nFluidUI is a responsive User Interface Framework that allows you to design your interface dynamically without having to worry about the screen resolution of the users playing your games. With many powerful features such as screen-size scaling, grids/lists, and aspect ratios, you will have nearly full control over the presentation of your game.\r\n\r\nGetting the framework to work itself is simple. You only need one instance of this script inside of of a ClientContext. Any additional copies of this script will conflict with each other and you will not get the intended goal.\r\n\r\nWithin the FluidUI.lua script is some very important documentation on how to utilize the system."
  }
  SerializationVersion: 65
  DirectlyPublished: true
}
