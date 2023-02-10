<p align="center">
  <img width="220px" src="https://github.com/HoMeTownJS/site/blob/main/public/images/logo-vertical.png?raw=true" />
</p>
<p align="center"><b>✨ @hometownjs/eslint-config-base 💥</b></p>
<p align="center">HoMeTownJS's eslint config presets with prettier</p>
<p align="center">Improve development experience.</p>

### From

📦 [hometown-eslint-config](https://github.com/HoMeTownJS/hometown-eslint-config)

### Usage 🤩

#### Install

First u need install the packages of eslint and typescript.

```bash
pnpm install typescript
pnpm install eslint
```

Install package.

```bash
pnpm install @hometownjs/eslint-config-base
```

#### config

Create files One of them .eslintrc.js/.eslintrc.json/.eslintrc.

```js
module.export = {
  extends: ['@hometownjs/eslint-config-base'] // eslint-config-ts || ...-vue2 || ...vue3
};
```

#### ignore

Generally, it is not necessary to add the. eslintignore configuration file, because some configurations have been preset. If the project requires, you can add them yourself.

default:

```js
module.exports = {
  // ...
  ignorePatterns: [
    'node_modules',
    '*.min.*',
    'CHANGELOG.md',
    'dist',
    'LICENSE*',
    'output',
    'coverage',
    'public',
    'temp',
    'package-lock.json',
    'pnpm-lock.yaml',
    'yarn.lock',
    '__snapshots__',
    '!.github',
    '!.vitepress',
    '!.vscode'
  ]
  // ...
}
```

#### alias

The following is the default alias configuration (no need to add). If you need to change it, please change the alias in the eslint configuration file according to the following code format.

```js
module.exports = {
  // ...
  settings: {
    'import/resolver': {
      alias: {
        map: [
          ['~', '.'],
          ['@', './src']
        ],
        extensions: ['.js', '.jsx', '.mjs', '.ts', '.tsx', 'mts', '.d.ts']
      }
    }
  },
  // ...
}
```

### command

Add script commands in package.json.

```json
{
  "scripts": {
    "lint": "eslint . --fix"
  }
}
```

lint urs code:

```bash
# pnpm
pnpm run lint
# npm
npm run lint
# yarn
yarn lint
```

## Author

[HoMeTown](https://juejin.cn/user/4116184668057390) 🙊
