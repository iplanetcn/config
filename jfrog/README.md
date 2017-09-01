# jfrog
> ##### upload android (library) to private jitpack repository config.
## 1. config root project build.gradle like this:

```groovy
buildscript {
    repositories {
        google()
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.0.0-beta3'
        classpath 'com.jfrog.bintray.gradle:gradle-bintray-plugin:1.7.1'
        classpath 'com.github.dcendents:android-maven-gradle-plugin:1.5'

        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
    }
}
```


## 2. library properties
> add to root project build.gradle as blow:

```groovy
ext {
    // package type
    packageType = 'aar'
    // bintray maven repository name
    bintrayRepo = 'maven'
    // name on the bintray repository
    bintrayName = 'xxxx'

    bintrayUser = System.getenv("BINTRAY_USER")
    bintrayApikey = System.getenv("BINTRAY_APIKEY")

    mavenGroupId = 'com.xxx.xxx'

    libraryDescription = 'description'

    siteUrl = 'https://github.com/xxx/xxx'
    gitUrl = 'https://github.com/xxx/xxx.git'

    libraryVersion = '0.0.1'

    developerId = 'xxx'
    developerName = 'xxxx'
    developerEmail = 'xxx@example.com'

    licenseName = 'The Apache Software License, Version 2.0'
    licenseUrl = 'http://www.apache.org/licenses/LICENSE-2.0.txt'
    allLicenses = ["Apache-2.0"]
}
```

***
## 3. choose one:
### a. Online:👍
open the library module build.gradle file, add blow scripts:
```groovy
apply from: "https://raw.githubusercontent.com/iplanetcn/config/master/jfrog/jfrog_upload.gradle"
```
### b. Offline:👻
*a*. download the [jfrog_upload.gradle](https://raw.githubusercontent.com/iplanetcn/config/master/jfrog/jfrog_upload.gradle) file.

*b*. move the downloaded jfrog_upload.gradle to your android studio library module root folder.

*c*. open the library module build.gradle file. add blow scripts:
```groovy
apply from: "${rootDir}/library/jfrog_upload.gradle
```

## 4. open project terminal view, run script:
```
./gradlew bintrayUpload
```
