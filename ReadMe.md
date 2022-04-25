# OpenV JS

OpenCV for JavaScript compiled with Emscripten.

## Installation

```sh
npm install @hophiphip/opencv-js
```

## Example Usage

```js
// import module
import cv from '@hophiphip/opencv-js';

// await for wasm & script to load
await cv.ready;

// log build information
console.log(cv.getBuildInformation());
```

