# Examples for OpenCV JS

## Vite JS Issues

**Workaround for `JavaScript heap out of memory` during `npm run build`.**

Just allocate more memory :)
```sh
NODE_OPTIONS=--max-old-space-size=4096 npm run build
```


