Assets {
  Id: 10263451186780852824
  Name: "Terrain Material_1"
  PlatformAssetType: 13
  SerializationVersion: 85
  CustomMaterialAsset {
    BaseMaterialId: 5663763886064527767
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material1_Sides"
        AssetReference {
          Id: 684401473805897223
        }
      }
      Overrides {
        Name: "material1side_scale"
        Float: 0.15
      }
      Overrides {
        Name: "cmp:Material1"
        AssetReference {
          Id: 13289504489595108788
        }
      }
      Overrides {
        Name: "material1_scale"
        Float: 0.25
      }
    }
    Assets {
      Id: 5663763886064527767
      Name: "Terrain Composite Triplanar Complex Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_composite_triplanar_blend_001_wa"
      }
    }
    Assets {
      Id: 684401473805897223
      Name: "Rocky Ground 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "rocky_001"
      }
    }
    Assets {
      Id: 13289504489595108788
      Name: "Grass Clumps"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_002_uv"
      }
    }
  }
}
