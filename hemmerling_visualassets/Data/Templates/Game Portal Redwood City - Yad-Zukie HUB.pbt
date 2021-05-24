Assets {
  Id: 2150426655430479241
  Name: "Game Portal Redwood City - Yad-Zukie HUB"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12224925384176006365
      Objects {
        Id: 12224925384176006365
        Name: "Game Portal Redwood City - Yad-Zukie HUB"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5280829811041584446
        ChildIds: 11828764422417517805
        ChildIds: 4614102807286614763
        UnregisteredParameters {
          Overrides {
            Name: "cs:DestinationGame"
            String: "7bba99/redwood-city-courthouse-square"
          }
          Overrides {
            Name: "cs:DestinationGame:tooltip"
            String: "The id of the game that this will portal players to. Example: The game ID for the URL https://www.coregames.com/games/577d80/core-royale is 577d80/core-royale."
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5280829811041584446
        Name: "Trigger"
        Transform {
          Location {
            Y: 21.1170654
            Z: 138.470886
          }
          Rotation {
          }
          Scale {
            X: 1.83077681
            Y: 1.08512187
            Z: 3
          }
        }
        ParentId: 12224925384176006365
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Take Portal to Redwood City Yad-Zukie HUB"
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
        Id: 11828764422417517805
        Name: "GamePortalServer"
        Transform {
          Location {
            Z: -200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12224925384176006365
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 12224925384176006365
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 5280829811041584446
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
            Id: 9097637882889565073
          }
        }
      }
      Objects {
        Id: 4614102807286614763
        Name: "Geo"
        Transform {
          Location {
            Z: 150
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12224925384176006365
        ChildIds: 10688767269626292015
        ChildIds: 10251884680979285804
        ChildIds: 696912413257772101
        ChildIds: 8507960063230973685
        ChildIds: 1154996530778086716
        ChildIds: 8283368493052384407
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 10688767269626292015
        Name: "Ring - Thin"
        Transform {
          Location {
            Z: -161.264893
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.8
            Y: 0.8
            Z: 0.7
          }
        }
        ParentId: 4614102807286614763
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8189904225714174557
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 8855625072569601502
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 10251884680979285804
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
        ParentId: 4614102807286614763
        ChildIds: 15473939195542002607
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 15473939195542002607
        Name: "Game Portal"
        Transform {
          Location {
            X: 0.217773438
            Y: 3.66723633
            Z: -14.7802734
          }
          Rotation {
            Yaw: -89.9999695
          }
          Scale {
            X: 0.6
            Y: 0.244497061
            Z: 0.321628422
          }
        }
        ParentId: 10251884680979285804
        UnregisteredParameters {
          Overrides {
            Name: "bp:Game ID"
            String: "7bba99/redwood-city-courthouse-square"
          }
          Overrides {
            Name: "bp:Use World Capture"
            Bool: false
          }
          Overrides {
            Name: "bp:Use Radial Mask"
            Bool: true
          }
          Overrides {
            Name: "bp:Swirl Element Distance"
            Float: 0.293512583
          }
          Overrides {
            Name: "bp:Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Edge Distortion"
            Float: 0
          }
          Overrides {
            Name: "bp:Speed"
            Float: 0.396388918
          }
          Overrides {
            Name: "bp:Intersection Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:View Distortion Amount"
            Float: 0.514171779
          }
          Overrides {
            Name: "bp:Portal Shape"
            Int: 3
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: true
          }
          Overrides {
            Name: "bp:Disable Swirl and Edge"
            Bool: true
          }
          Overrides {
            Name: "bp:Scene View Distortion Type"
            Enum {
              Value: "mc:eportalscenedistortiontype:newenumerator1"
            }
          }
          Overrides {
            Name: "bp:Screenshot Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Edge Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Portal Spread"
            Float: 1
          }
          Overrides {
            Name: "bp:Mask Range"
            Float: 1
          }
          Overrides {
            Name: "bp:Mask Hardness"
            Float: 0.558261633
          }
          Overrides {
            Name: "bp:Unlit"
            Bool: false
          }
          Overrides {
            Name: "bp:Horizontal Bend Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:Bend Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Mask Color"
            Color {
              R: 0.0775266737
              G: 0.375870585
              B: 0.799
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
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 10262763971255673507
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 696912413257772101
        Name: "Game Portal Image"
        Transform {
          Location {
            X: -1.02026367
            Y: -6.44238281
            Z: 232.472412
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.293851733
            Y: 0.195901141
            Z: 0.146925867
          }
        }
        ParentId: 4614102807286614763
        UnregisteredParameters {
          Overrides {
            Name: "bp:Game ID"
            String: "7bba99/redwood-city-courthouse-square"
          }
          Overrides {
            Name: "bp:Use World Capture"
            Bool: false
          }
          Overrides {
            Name: "bp:Use Radial Mask"
            Bool: false
          }
          Overrides {
            Name: "bp:Swirl Element Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Rotation"
            Float: 0
          }
          Overrides {
            Name: "bp:Edge Distortion"
            Float: 0
          }
          Overrides {
            Name: "bp:Speed"
            Float: 0
          }
          Overrides {
            Name: "bp:Intersection Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:View Distortion Amount"
            Float: 0
          }
          Overrides {
            Name: "bp:Portal Shape"
            Int: 2
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: true
          }
          Overrides {
            Name: "bp:Disable Swirl and Edge"
            Bool: true
          }
          Overrides {
            Name: "bp:Scene View Distortion Type"
            Enum {
              Value: "mc:eportalscenedistortiontype:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Screenshot Index"
            Int: 1
          }
          Overrides {
            Name: "bp:Edge Distance"
            Float: 0
          }
          Overrides {
            Name: "bp:Portal Spread"
            Float: 1
          }
          Overrides {
            Name: "bp:Mask Range"
            Float: 1
          }
          Overrides {
            Name: "bp:Mask Hardness"
            Float: 1
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
        Blueprint {
          BlueprintAsset {
            Id: 10262763971255673507
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 8507960063230973685
        Name: "Whitebox Wall 01 Window Large"
        Transform {
          Location {
            X: -106.643066
            Y: -4.5357666
            Z: 116.587158
          }
          Rotation {
          }
          Scale {
            X: 0.26251936
            Y: 0.269658029
            Z: 0.332939327
          }
        }
        ParentId: 4614102807286614763
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner2:id"
            AssetReference {
              Id: 8189904225714174557
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 8189904225714174557
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
        CoreMesh {
          MeshAsset {
            Id: 4198785697598810219
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1154996530778086716
        Name: "Door, Rounded Top"
        Transform {
          Location {
            X: 81.2568359
            Y: -22.2811279
            Z: -150
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 0.99999994
            Y: 0.824887693
            Z: 0.787878454
          }
        }
        ParentId: 4614102807286614763
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 2197200005332549640
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8283368493052384407
        Name: "Cube"
        Transform {
          Location {
            X: -1.32397461
            Y: -10.6721191
            Z: 233.176514
          }
          Rotation {
          }
          Scale {
            X: 1.90234709
            Y: 0.0167138614
            Z: 1.39599323
          }
        }
        ParentId: 4614102807286614763
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8189904225714174557
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
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 8855625072569601502
      Name: "Stone Arch (doorway) 001"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_stone_doorway_001"
      }
    }
    Assets {
      Id: 8189904225714174557
      Name: "Stucco Tintable"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_stucco_tint_001_uv"
      }
    }
    Assets {
      Id: 10262763971255673507
      Name: "Game Portal"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_webportal"
      }
    }
    Assets {
      Id: 4198785697598810219
      Name: "Whitebox Wall 01 Window Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_gen_whitebox_wall_001_windowL"
      }
    }
    Assets {
      Id: 2197200005332549640
      Name: "Door, Rounded Top"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_door_rounded_2m_001"
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
  Marketplace {
    Description: "Our generic portal for all Yad-Zukie Games"
  }
  SerializationVersion: 85
  DirectlyPublished: true
}
