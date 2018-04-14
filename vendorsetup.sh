if grep -q "PLATFORM_VERSION := 6.0.1" build/core/version_defaults.mk
  then
  cd external/svox
  if [ -e "bug_69177126" ]; then
    echo 'external/svox patched already';
  else
    git am ../../vendor/extra/patch/external/svox/0001-SVOX-Properly-initialize-buffers.patch || git am --abort
  fi
else
  echo 'This is not Android 6, patching external/svox not possible';
fi
croot
