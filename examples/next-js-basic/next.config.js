/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  
  // The workaround to fix issue: Can't resolve 'fs'.
  //  Reference: https://stackoverflow.com/questions/67478532/module-not-found-cant-resolve-fs-nextjs
  webpack(config) {
    config.resolve.fallback = {
      ...config.resolve.fallback,
      fs: false,
    };

    return config;
  },
  
}

module.exports = nextConfig
