Assets {
  Id: 7365461632868952584
  Name: "Modern Weapon - Grenade 02 (Prop)"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 586392027610611053
      Objects {
        Id: 586392027610611053
        Name: "Grenade 02"
        Transform {
          Location {
            X: -1300
            Y: -6150
            Z: 1500
          }
          Rotation {
            Yaw: 134.999969
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12071818115415121493
        ChildIds: 15318120408742821419
        ChildIds: 17845526294958205959
        UnregisteredParameters {
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
        Id: 15318120408742821419
        Name: "Grenade Canister 02"
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
        ParentId: 586392027610611053
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
            Id: 12486469380190802843
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
        Id: 17845526294958205959
        Name: "Grenade Handle 01"
        Transform {
          Location {
            Z: 26.2399063
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 586392027610611053
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
            Id: 5544820850613172301
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
    }
    Assets {
      Id: 12486469380190802843
      Name: "Modern Weapon - Grenade Canister 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weapons_grenade_indented_001"
      }
    }
    Assets {
      Id: 5544820850613172301
      Name: "Modern Weapon - Grenade Handle 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weapons_grenade_handle_001"
      }
    }
    PrimaryAssetId {
      AssetType: "TemplateAssetRef"
      AssetId: "Grenade_02"
    }
  }
  SerializationVersion: 85
}
