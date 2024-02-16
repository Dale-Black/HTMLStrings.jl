## Build .html
```
cd docs
julia make.jl
```

## Push to gh-pages branch
```
cd HTMLStrings
git subtree push --prefix docs/build  origin gh-pages
```