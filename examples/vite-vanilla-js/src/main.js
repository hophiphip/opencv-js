import cv from '@hophiphip/opencv-js';

cv.ready.then(cv => {
    console.log(cv.getBuildInformation());
});