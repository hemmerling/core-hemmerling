Assets {
  Id: 6351778861723129320
  Name: "Urban Car - Front Door (Prop)"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16509552530433025149
      Objects {
        Id: 16509552530433025149
        Name: "Urban Car - Front Door (Prop)"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1500010876729471993
        ChildIds: 4381802070865460025
        ChildIds: 2511433045020990857
        ChildIds: 6840131280240886505
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
        Id: 1500010876729471993
        Name: "Urban Vehicle Car - Door Front 01"
        Transform {
          Location {
            X: -94.9020386
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16509552530433025149
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 12482639849349891471
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
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
        Id: 4381802070865460025
        Name: "Urban Vehicle Car - Door Front 01 - Window 01"
        Transform {
          Location {
            X: -93.7456055
            Y: 23.1739502
            Z: 78.2529907
          }
          Rotation {
            Roll: 30
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16509552530433025149
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 3104633519268009050
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
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
        Id: 2511433045020990857
        Name: "Urban Vehicle Accessory - Sideview Mirror 01"
        Transform {
          Location {
            X: -32.3813477
            Y: 5.57659912
            Z: 65.3407593
          }
          Rotation {
            Yaw: -30
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16509552530433025149
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 6242160511200985545
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
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
        Id: 6840131280240886505
        Name: "Urban Vehicle Accessory- Door Handle"
        Transform {
          Location {
            X: -133.611816
            Y: -0.368896484
            Z: 46.2293472
          }
          Rotation {
            Roll: -53
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16509552530433025149
        UnregisteredParameters {
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
            Id: 15654135293853786027
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
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
      Id: 12482639849349891471
      Name: "Urban Vehicle Car - Door Front 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_veh_urb_car_kit_door_front_001_ref"
      }
    }
    Assets {
      Id: 3104633519268009050
      Name: "Urban Vehicle Car - Door Front 01 - Window 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_veh_urb_car_kit_door_front_001_window_001_ref"
      }
    }
    Assets {
      Id: 6242160511200985545
      Name: "Urban Vehicle Accessory - Sideview Mirror 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_veh_urb_car_acc_mirror_sideview_001_ref"
      }
    }
    Assets {
      Id: 15654135293853786027
      Name: "Urban Vehicle Accessory - Door Handle"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_veh_urb_car_kit_door_handle_001_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Urban_Car_-_Front_Door_01__Prop_"
    }
  }
  SerializationVersion: 85
}
