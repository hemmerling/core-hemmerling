Assets {
  Id: 11762550726249838580
  Name: "Modern Damaged Stairs 01 - Straight 2m Template"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1001752860680604798
      Objects {
        Id: 1001752860680604798
        Name: "Modern Damaged Stairs 01 - Straight 2m Template"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5964077432896709670
        ChildIds: 2360593627705633472
        ChildIds: 1325647746863317065
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
        Id: 5964077432896709670
        Name: "Modern Damaged Stairs Stringer 01 - Angled 2m 03"
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
        ParentId: 1001752860680604798
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
            Id: 3771852761540357313
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
        Id: 2360593627705633472
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
        ParentId: 1001752860680604798
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13841958887620630136
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
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
        Id: 1325647746863317065
        Name: "Modern Damaged Stairs Steps 01 - 2m 01"
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
        ParentId: 1001752860680604798
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
            Id: 10405415146177770279
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
      Id: 3771852761540357313
      Name: "Modern Damaged Stairs Stringer 01 - Angled 2m 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_mod_stairs_stringer_angled_003_damaged_03_ref"
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
      Id: 10405415146177770279
      Name: "Modern Damaged Stairs Steps 01 - 2m 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_mod_stairs_steps_003_damaged_01_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Modern_Damaged_Stairs_01_-_Straight_2m_Template"
    }
  }
  SerializationVersion: 85
}
