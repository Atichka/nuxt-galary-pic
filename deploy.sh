#!/bin/sh
set -e

npm run generate

cd dist
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:Atichka/nuxt-galary-pic.git main:gh-pages

cd -
