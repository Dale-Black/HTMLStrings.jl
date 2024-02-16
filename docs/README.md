## Build .html
```
cd docs
julia make.jl
```

## Push to gh-pages branch
```
git subtree push --prefix docs/build  origin gh-pages
```