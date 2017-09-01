# jitpack
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
        classpath 'com.github.dcendents:android-maven-gradle-plugin:1.5'
        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
    }
}
```


## 2. add group name
> add to root project build.gradle as blow:

```groovy
ext {
    groupName = 'com.github.iplanetcn'
}
```

***
## 3. choose one:
### a. Online:👍
open the library module build.gradle file, add blow scripts:
```groovy
apply from: "https://raw.githubusercontent.com/iplanetcn/config/master/jitpack/jitpack.gradle"
```
### b. Offline:👻
*a*. download the [jfrog_upload.gradle](https://raw.githubusercontent.com/iplanetcn/config/master/jitpack/jitpack.gradle) file.

*b*. move the downloaded jitpack.gradle to your android studio library module root folder.

*c*. open the library module build.gradle file. add blow scripts:
```groovy
apply from: "${rootDir}/library/jitpack.gradle
```

## 4. tag the project and use jitpack update
