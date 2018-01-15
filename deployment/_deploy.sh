git config --global user.email "ross.a.drucker@gmail.com"
git config --global user.name "Ross Drucker"

git clone -b gh-pages \
  https://${GITHUB_PAT}@github.com/${TRAVIS_REPO_SLUG}.git \
  book-output
  
cd book-output

cp -r ../_book/* ./

cp -r ../*.Rmd ./

git add *
git commit -a -m "Updating (${TRAVIS_BUILD_NUMBER})"
git push origin gh-pages
