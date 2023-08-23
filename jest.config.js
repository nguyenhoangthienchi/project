module.exports = {
    transform: {
        '\\.js$': ['babel-jest', { configFile: './babel.config.js' }]
    },
    transformIgnorePatterns: [

        '<rootDir>/node_modules/common-ui',

    ],
};