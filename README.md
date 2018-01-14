# vendor/extra

Add include this repository from your local_manifests inside .repo/local_manifests/

```

<?xml version="1.0" encoding="UTF-8"?>
<manifest>

  <remote  name="andi34"
           fetch="https://github.com/andi34/" />

  <project path="vendor/extra" name="android_vendor_extra" remote="andi34" revision="m" />

</manifest>

```