FROM eclipse-temurin:21
WORKDIR "/opt/build"
CMD ["java", "-jar", "revanced-cli.jar", "patch", "-b", "revanced-patches.jar", "-m", "revanced-integrations.apk", "-o", "youtube-revanced.apk", "youtube-stock.apk"]

