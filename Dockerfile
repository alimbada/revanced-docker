FROM eclipse-temurin:21
WORKDIR "/opt/build"
CMD ["java", "-jar", "revanced-cli.jar", "patch", "-p", "patches.rvp", "-o", "youtube-revanced.apk", "youtube-stock.apk"]

