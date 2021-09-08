module.exports = {
  publicPath:
    process.env.NODE_ENV === "production"
      ? '/twhome/' // test20200915 為 repo 名稱
      : '/',
  css: {
    loaderOptions: {
      css: {
        sourceMap: process.env.NODE_ENV !== "production" ? true : false
      }
    }
  }
};
