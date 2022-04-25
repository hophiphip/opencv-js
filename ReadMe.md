# OpenCV JS

OpenCV for JavaScript compiled with Emscripten.

## Installation

```sh
npm install @hophiphip/opencv-js
```

## Example Usage

Import module and then wait for it to load.
```js
// import module
import cv from '@hophiphip/opencv-js';

// await for wasm & script to load
await cv.ready;

// log build information
console.log(cv.getBuildInformation());
```

..or without top level `await`.

```js
import cv from '@hophiphip/opencv-js';

cv.ready.then(cv => {
    console.log(cv.getBuildInformation());
});
```

