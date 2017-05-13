var path = require('path');
var webpack = require('webpack');
var HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
    entry: './src/build.js',
    output: {
        path: path.resolve(__dirname, './out'),
        publicPath: '/out/',//webpack输出目录，html中嵌入的js的地址以这个为准
        filename: 'bundle.js'
    },
    module: {
        loaders: [
            {
                test: /\.vue$/,
                loader: 'vue-loader'
            },
            {
                test: /\.js$/,
                loader: 'babel-loader',
                exclude: /node_modules/
            },
            {
                test: /\.css$/,
                loader: 'style-loader!css-loader'
            },
            {
                test: /\.(eot|svg|ttf|woff|woff2)(\?\S*)?$/,
                loader: 'file-loader?name=files/[name].[ext]'
            },
            {
                test: /\.(png|jpe?g|gif|)(\?\S*)?$/,
                loader: 'file-loader?name=images/[name].[ext]',
            },
            {
                test: /\.(ico)(\?\S*)?$/,
                loader: 'file-loader?name=icons/[name].[ext]',
            }
        ]
    },

    plugins: [
        new HtmlWebpackPlugin(), // Generates default index.html
        new HtmlWebpackPlugin({
            filename: 'pages/index.html',
            template: 'src/pages/index.html'
        })
    ],

    devServer: {
        historyApiFallback: true,
        noInfo: true
    },

    devtool: '#eval-source-map'
}

if (process.env.NODE_ENV === 'production') {
    module.exports.devtool = '#source-map'
    module.exports.plugins = (module.exports.plugins || []).concat([
        new webpack.DefinePlugin({
            'process.env': {
                NODE_ENV: '"production"'
            }
        }),
        new webpack.optimize.UglifyJsPlugin({
            compress: {
                warnings: false
            }
        })
    ])
}