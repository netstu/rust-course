## this script is releasing the book to github pages

## build book
mdbook build
## copy CNAME info to book dir
cp CNAME ./book/

## init git repo
cd book
git init
git config user.name "sunface"
git config user.email "cto@188.com"
git add .
git commit -m 'release book'
git branch -M gh-pages
git remote add origin https://github.com/rustcm/the-way-to-rust

## push to github pages
git push -u -f origin gh-pages