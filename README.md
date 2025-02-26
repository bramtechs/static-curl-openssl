# static-curl-openssl

**NOTE: This repo was made when I didn't know a lot about native
Android development. It is recommended to use a more proper dependency management solution
like [Google Prefabs](https://github.com/android/ndk-samples/tree/main/prefab/curl-ssl)
from the [ndk-examples](https://github.com/android/ndk-samples) repo that uses dynamic linking instead.
Curl and OpenSSL are security-critical dependencies
that should be kept up to date!**

CMake interface to quickly **statically link** curl and openssl on Android.

Do not use blindly in production. Check licenses of the resources below.<br>
Comes with absolutely no warranty.

## Resources
- Prebuilt curl libraries: https://github.com/gustavogenovese/curl-android-ios
- Prebuilt openssl libraries: https://teskalabs.com/blog/openssl-binary-distribution-for-developers-static-library
