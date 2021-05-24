Assets {
  Id: 11433540957992309755
  Name: "Sign - No Right Turn"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2963335516650790864
      Objects {
        Id: 2963335516650790864
        Name: "Sign - No Right Turn"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5644980219764965998
        ChildIds: 2309166181074161747
        ChildIds: 8689252286738362884
        ChildIds: 6356265933651282406
        ChildIds: 14611620737991361485
        ChildIds: 16839398554003466121
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
        Id: 2309166181074161747
        Name: "Street Post Round 01"
        Transform {
          Location {
            Z: 3.05175781e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2963335516650790864
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16131503078867448818
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
        Id: 8689252286738362884
        Name: "Street Sign - Round"
        Transform {
          Location {
            Y: 5.08886719
            Z: 300
          }
          Rotation {
          }
          Scale {
            X: 0.85
            Y: 1
            Z: 0.85
          }
        }
        ParentId: 2963335516650790864
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Face:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 2708004403102247527
            }
          }
          Overrides {
            Name: "ma:Sign_Stripe:color"
            Color {
              R: 0.829000056
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 2408921510563552035
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
        Id: 6356265933651282406
        Name: "Decal Road Sign Symbols"
        Transform {
          Location {
            X: 3.50634766
            Y: 8.54492188
            Z: 300
          }
          Rotation {
            Yaw: -3.05175781e-05
            Roll: 89.9998779
          }
          Scale {
            X: 0.106991515
            Y: 0.106991515
            Z: 0.0209750906
          }
        }
        ParentId: 2963335516650790864
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 0
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.0420000032
              G: 0.0420000032
              B: 0.0420000032
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
            Id: 14272986521887390608
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14611620737991361485
        Name: "Sign Bracket - Round"
        Transform {
          Location {
            Y: 5.38378906
            Z: 300
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2963335516650790864
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16890205056291965690
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
        Id: 16839398554003466121
        Name: "Decal Road Sign Symbols"
        Transform {
          Location {
            X: 3.48366257e-06
            Y: 9.74102402
            Z: 300
          }
          Rotation {
            Pitch: -6.10351563e-05
            Yaw: 1.93060487e-06
            Roll: 89.9996338
          }
          Scale {
            X: 0.175700292
            Y: 0.175700232
            Z: 0.00989095494
          }
        }
        ParentId: 2963335516650790864
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 6
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.807000041
              A: 1
            }
          }
          Overrides {
            Name: "bp:Sort Order"
            Int: 1
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
            Id: 14272986521887390608
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 16131503078867448818
      Name: "Street Post Round 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_st_post_lights_post_round_001"
      }
    }
    Assets {
      Id: 2408921510563552035
      Name: "Street Sign - Round"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_street-sign_round_001"
      }
    }
    Assets {
      Id: 14272986521887390608
      Name: "Decal Road Sign Symbols"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_roadsigns_001"
      }
    }
    Assets {
      Id: 16890205056291965690
      Name: "Sign Bracket - Round"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_signbracket_round_001"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Sign_-_No_Right_Turn"
    }
  }
  SerializationVersion: 85
}
