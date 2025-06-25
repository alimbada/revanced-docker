### Device setup
 - Install GmsCore on device: https://github.com/ReVanced/GmsCore/releases
### Pre-requisites
 - Grab the latest **supported** YouTube APK: https://www.apkmirror.com/?post_type=app_release&searchtype=apk&page=3&sortby=date&sort=desc&s=-beta+com.google.android.youtube&minapi-min=26&dpi%5B%5D=nodpi&bundles%5B%5D=apkm_bundles&bundles%5B%5D=apk_files
   - You can use this script to determine which versions are supported:
     ```
     curl -X 'GET' 'https://api.revanced.app/v4/patches/list' -H 'accept: application/json' \
      | jq '.[] | select(.compatiblePackages."com.google.android.youtube") | .compatiblePackages."com.google.android.youtube"[]' \
      | sort -u
     ```
   - Grab the "nodpi" version
 - Grab revanced-cli: https://github.com/ReVanced/revanced-cli/releases
   - name it `revanced-cli.jar` and put it in the `data` directory
 - Grab patches: https://github.com/ReVanced/revanced-patches/releases
  - name it `patches.rvp` and put it in the `data` directory

### Build
 - Build the container:
    ```
    docker build -t revanced-patcher .
    ```
 - Run:
    ```
    docker run --rm -v /path/to/revanced-docker/data:/opt/build revanced-patcher
    ```

If successful, a `youtube-revanced.apk` file should be output to the `data` directory. Transfer this to the target device and install it (uninstall the existing YouTube app first).

### References

Patch guide: https://sodawithoutsparkles.github.io/revanced-troubleshooting-guide/06-revanced-cli/

Similar attempts:
 - https://github.com/nikhilbadyal/docker-py-revanced
 - https://github.com/CnC-Robert/revanced-cli-script/blob/main/build-from-prebuilt.sh
