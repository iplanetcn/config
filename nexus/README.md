# nexus
> ##### upload android (library) to private nexus maven repository config.

## 1. library properties
open gradle.properties at android studio project root folder.
add and complete the blow scripts:
```java-properties
# nexus repository url
NEXUS_SNAPSHOT_REPOSITORY_URL=http://nexus.xxx.com/repository/maven-snapshots/
NEXUS_REPOSITORY_URL=http://nexus.xxx.com/repository/maven-releases/
# groupId
GROUP=
# nexus oss username
NEXUS_USERNAME=
# nexus oss password
NEXUS_PASSWORD=
# groupid
POM_GROUPID=
# type(support aar/jar)
POM_PACKAGING=
# description
POM_DESCRIPTION=
# artifact_id
POM_ARTIFACTID=
# name
POM_NAME=
# version
POM_VERSION=
```
***
## 2. choose one:
### a. Online:👍
open the library module build.gradle file, add blow scripts:
```groovy
apply from: "https://raw.githubusercontent.com/iplanetcn/config/master/nexus/nexus_upload.gradle"
```
### b. Offline:👻
*a*. download the [nexus_upload.gradle](https://raw.githubusercontent.com/iplanetcn/config/master/nexus/nexus_upload.gradle) file.

*b*. move the downloaded nexus_upload.gradle to your android studio library module root folder.

*c*. open the library module build.gradle file. add blow scripts:
```groovy
apply from: "${rootDir}/library/nexus_upload.gradle
```
