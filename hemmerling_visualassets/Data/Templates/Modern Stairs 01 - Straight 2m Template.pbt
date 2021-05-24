Assets {
  Id: 13644988442814434349
  Name: "Modern Stairs 01 - Straight 2m Template"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4927949861284294292
      Objects {
        Id: 4927949861284294292
        Name: "Modern Stairs 01 - Straight 2m Template"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11680583675926085014
        ChildIds: 5038680061102687320
        ChildIds: 12929065934430302909
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
        Id: 11680583675926085014
        Name: "Modern Stairs Stringer 01 - Angled 2m"
        Transform {
          Location {
            X: 200
          }
          Rotation {
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4927949861284294292
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
            Id: 13151094483699461398
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
        Id: 5038680061102687320
        Name: "Modern Stairs Stringer 01 - Angled 2m"
        Transform {
          Location {
            X: -200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4927949861284294292
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
            Id: 13151094483699461398
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
        Id: 12929065934430302909
        Name: "Modern Stairs Steps 01 - 2m 01"
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
        ParentId: 4927949861284294292
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
            Id: 5178947421179229826
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
      Id: 13151094483699461398
      Name: "Modern Stairs Stringer 01 - Angled 2m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_mod_stairs_stringer_angled_003_ref"
      }
    }
    Assets {
      Id: 5178947421179229826
      Name: "Modern Stairs Steps 01 - 2m 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_mod_stairs_steps_003_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Modern_Stairs_01_-_Straight_2m_Template"
    }
  }
  SerializationVersion: 85
}
