# Build & compile locally

## Requirements
- [Docker](https://www.docker.com/)

## Compilation 
Run in the `root` directory of the package.

Create `build` directory and build `Docker` container.
```sh
npm run build
```

Compile `OpenCV` with `Emscripten`.
```sh
npm run compile
```

## Additional commands

Delete `Docker` container.
```sh
npm run build:clean
```

Clean `build` directory.
```sh
npm run clean
```

Compile `OpenCV` with `Emscripten` with seaprate `JS` and `WASM` files.
```
npm run compile:separate
```