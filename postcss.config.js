module.exports = {
  plugins: [
    require('postcss-import')(),
    require('postcss-mixins')(),
    require('postcss-nested')(),
    require('postcss-simple-vars')(),
    require('autoprefixer')({
      "browsers": [
        "ie 11",
        "last 1 Edge versions",
        "last 1 Firefox versions",
        "last 1 Chrome versions",
        "last 1 Safari versions",
        "iOS >= 9",
        "Android >= 4.4",
        "last 1 ChromeAndroid versions"
      ]
    }),
    require('postcss-color-function')(),
    require('postcss-calc')(),
    require('css-mqpacker')(),
    require('csswring')()
  ]
}
