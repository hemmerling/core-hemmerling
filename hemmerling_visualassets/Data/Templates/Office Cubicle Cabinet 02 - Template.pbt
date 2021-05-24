Assets {
  Id: 1245419202350136100
  Name: "Office Cubicle Cabinet 02 - Template"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1879976707208926314
      Objects {
        Id: 1879976707208926314
        Name: "Office Cubicle Cabinet 02 - Template"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11507821015299830655
        ChildIds: 4100683762643256830
        ChildIds: 2376588916149066318
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
        Id: 11507821015299830655
        Name: "Office Cubicle Cabinet 02"
        Transform {
          Location {
            Z: -3.05175781e-05
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1879976707208926314
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
            Id: 14436456058292222270
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
        Id: 4100683762643256830
        Name: "Office Cubicle Cabinet Door 01"
        Transform {
          Location {
            X: -135
            Y: 195
            Z: 10
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1879976707208926314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4181586232090897772
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 18158773904973768887
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
            Id: 1884519533488252023
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
        Id: 2376588916149066318
        Name: "Office Cubicle Cabinet Door 01"
        Transform {
          Location {
            X: -135
            Y: 5
            Z: 10
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1879976707208926314
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4181586232090897772
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 18158773904973768887
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
            Id: 1884519533488252023
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
      Id: 14436456058292222270
      Name: "Office Cubicle Cabinet 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_off_cubicle_cabinet_002_ref"
      }
    }
    Assets {
      Id: 1884519533488252023
      Name: "Office Cubicle Cabinet Door 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_off_cubicle_cabinet_001_door_01_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Office_Cubicle_Cabinet_02_-_Template"
    }
  }
  SerializationVersion: 85
}
