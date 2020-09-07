Assets {
  Id: 3500753474571803128
  Name: "ReplicatedInvokeEvent"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6248175531510619446
      Objects {
        Id: 6248175531510619446
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
              Id: 2226207599660967350
            }
          }
        }
      }
    }
    Assets {
      Id: 2226207599660967350
      Name: "ReplicatedInvokeEvent"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 16034241096965787254
          Objects {
            Id: 16034241096965787254
            Name: "ReplicatedInvokeEvent"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 2832865841191093281
            ChildIds: 14300876971363256141
            ChildIds: 17124557852711528074
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
            Id: 2832865841191093281
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
            ParentId: 16034241096965787254
            ChildIds: 12970851759679141111
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
          Objects {
            Id: 12970851759679141111
            Name: "Sample Server Script"
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
            ParentId: 2832865841191093281
            UnregisteredParameters {
              Overrides {
                Name: "cs:ReplicatedInvokeEvent"
                AssetReference {
                  Id: 2729733825669359590
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
                Id: 5604727978310530187
              }
            }
          }
          Objects {
            Id: 14300876971363256141
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
            ParentId: 16034241096965787254
            ChildIds: 6672211867297919079
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
            Id: 6672211867297919079
            Name: "Sample Client Script"
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
            ParentId: 14300876971363256141
            UnregisteredParameters {
              Overrides {
                Name: "cs:ReplicatedInvokeEvent"
                AssetReference {
                  Id: 2729733825669359590
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
                Id: 5157075666758619903
              }
            }
          }
          Objects {
            Id: 17124557852711528074
            Name: "StaticContext"
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
            ParentId: 16034241096965787254
            ChildIds: 4112331966859909949
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
            Id: 4112331966859909949
            Name: "ReplicatedInvokeEvent"
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
            ParentId: 17124557852711528074
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 2729733825669359590
              }
            }
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      DirectlyPublished: true
    }
    Assets {
      Id: 5157075666758619903
      Name: "Sample Client Script"
      PlatformAssetType: 3
      TextAsset {
        Text: "local ReplicatedInvokeEvent = require(script:GetCustomProperty(\"ReplicatedInvokeEvent\"))\r\n\r\nlocal doubleTwo = ReplicatedInvokeEvent:InvokeServer(\"Double Number\", 2)\r\nlocal doubleTen = ReplicatedInvokeEvent:InvokeServer(\"Double Number\", 10)\r\nlocal doubleFifty = ReplicatedInvokeEvent:InvokeServer(\"Double Number\", 50)\r\n\r\nprint(doubleTwo, doubleTen, doubleFifty)"
      }
    }
    Assets {
      Id: 2729733825669359590
      Name: "ReplicatedInvokeEvent"
      PlatformAssetType: 3
      TextAsset {
        Text: "local Module = {}\r\n\r\nfunction Module:InvokeServer(name, ...)\r\n    local connection, response\r\n    connection = Events.Connect(\"POST_\" .. name, function(serverResponse)\r\n        response = serverResponse\r\n        connection:Disconnect()\r\n    end)\r\n    Events.BroadcastToServer(\"GET_\" .. name, Game.GetLocalPlayer(), ...)\r\n\r\n    repeat Task.Wait() until response\r\n    return response\r\nend\r\n\r\nfunction Module:InvokeClient(name, player, ...)\r\n    if(not player:IsA(\"Player\")) then return end\r\n\r\n    local connection, response\r\n    connection = Events.Connect(\"POST_\" .. name, function(clientReponse)\r\n        response = clientReponse\r\n        connection:Disconnect()\r\n    end)\r\n    Events.BroadcastToPlayer(\"GET_\" .. name, ...)\r\n\r\n    repeat Task.Wait() until response\r\n    return response\r\nend\r\n\r\nfunction Module:ConnectInvokeServer(name, func)\r\n    Events.Connect(\"GET_\" .. name, function(player, ...)\r\n        Events.BroadcastToPlayer(player, \"POST_\" .. name, func(player, ...))\r\n    end)\r\nend\r\n\r\nfunction Module:ConnectInvokeClient(name, func)\r\n    Events.Connect(\"GET_\" .. name, function(...)\r\n        Events.BroadcastToServer(\"POST_\" .. name, func(...))\r\n    end)\r\nend\r\n\r\nreturn Module"
      }
    }
    Assets {
      Id: 5604727978310530187
      Name: "Sample Server Script"
      PlatformAssetType: 3
      TextAsset {
        Text: "local ReplicatedInvokeEvent = require(script:GetCustomProperty(\"ReplicatedInvokeEvent\"))\r\n\r\nlocal function doubleNumber(player, number)\r\n    return number * 2\r\nend\r\n\r\nReplicatedInvokeEvent:ConnectInvokeServer(\"Double Number\", doubleNumber)"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "4b7014546e28414c9de77a3185aa2867"
    OwnerAccountId: "f9df3457225741c89209f6d484d0eba8"
    OwnerName: "nforeman"
    Description: "Summary coming soon? I\'m not good at descriptions."
  }
  SerializationVersion: 61
}
IncludesAllDependencies: true
