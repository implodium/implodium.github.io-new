module.exports = {
    root: true,
    env: {
        node: true,
    },
    extends: [
        'plugin:vue/essential',
        '@vue/airbnb',
        '@vue/typescript/recommended',
    ],
    parserOptions: {
        ecmaVersion: 2020,
    },
    rules: {
        'no-console': process.env.NODE_ENV === 'production' ? 'warn' : 'off',
        'no-debugger': process.env.NODE_ENV === 'production' ? 'warn' : 'off',
        'semi': 'off',
        'class-methods-use-this': 'off',
        'indent': ['error', 4],
        'lines-between-class-members': 'off',
        'no-trailing-spaces': 'off',
        'arrow-parens': 'off'
    },
};
