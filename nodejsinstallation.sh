For the recent versions of Alpine (v3.8+) the correct way to install nodejs with npm is:

apk add --update nodejs npm












#############If and only if required#########################
However, npm package depends on nodejs, so you can do:

apk add --update npm
