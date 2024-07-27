module.exports = {
    env: {
      browser: true,
      es2021: true,
      node: true, // Add this if you are using Node.js
      jest: true
    },
    extends: [
      'eslint:recommended',
      'plugin:react/recommended'
    ],
    parserOptions: {
      ecmaVersion: 12,
      sourceType: 'module'
    },
    plugins: [
      'react'
    ],
    rules: {
      // Your custom rules here
    },
    settings: {
      react: {
        version: 'detect'
      }
    }
  };
  