const path = require('path')

module.exports = {
  entry: {
    'js/pc':['@babel/polyfill', './src/js/index.js'],
    's/js/sp': './src/s/js/index.js'
  },
  output: {
    path: path.join(__dirname, 'dist'),
    filename: '[name].js'
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env']
          }
        }
      }
    ]
  },
  externals: {
    jquery: 'jQuery'
  }
  // },
  // plugins: [
  //   new webpack.ProvidePlugin({
  //     $: 'jquery',
  //     jQuery: 'jquery'
  //   })
  // ]
};