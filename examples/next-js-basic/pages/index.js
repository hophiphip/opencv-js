import { useState } from 'react';

import cv from '@hophiphip/opencv-js';

export default function Home() {
    let [isLoaded, setLoaded] = useState(false);
    
    cv.ready.then(_ => setLoaded(true));

    return (
        <div>
            { isLoaded ? 
                (
                    <p>OpenCV JS has been loaded.</p>
                ) 
                : 
                (
                    <p>Waiting for OpenCV JS to load..</p>
                )
            }
        </div>
    )
}
