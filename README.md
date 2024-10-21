### Device setup
 - Install GmsCore on device: https://github.com/ReVanced/GmsCore/releases/tag/v0.3.1.4.240913

### Pre-requisites
 - Grab latest **supported** YouTube APK, e.g.: https://www.apkmirror.com/apk/google-inc/youtube/youtube-19-16-39-release/youtube-19-16-39-android-apk-download/
   - "nodpi" version
 - Grab JARs:
   - https://github.com/ReVanced/revanced-cli/releases
   - https://github.com/ReVanced/revanced-patches/releases
 - Integrations APK: https://github.com/ReVanced/revanced-integrations/releases

### Build
 - Build container:
    ```
    docker build -t revanced-patcher .
    ```
 - Run:
    ```
    docker run --rm -v /path/to/revanced-docker/data:/opt/build revanced-patcher
    ```

If successful, a `youtube-revanced.apk` file should be output to the `data` directory. Transfer this to the target device and install it (uninstall existing YouTube app first).

### References

Patch guide: https://sodawithoutsparkles.github.io/revanced-troubleshooting-guide/06-revanced-cli/

Similar attempts:
 - https://github.com/nikhilbadyal/docker-py-revanced
 - https://github.com/CnC-Robert/revanced-cli-script/blob/main/build-from-prebuilt.sh