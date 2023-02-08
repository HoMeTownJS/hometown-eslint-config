<p align="center">
  <img width="220px" src="https://i.ibb.co/DCSdYrY/i-va-5.png" />
</p>
<p align="center"><b>✨ hometown-eslint-config 💥</b></p>
<p align="center">HoMeTownJS's eslint config presets with prettier</p>
<p align="center">Improve development experience.</p>

### Packages📦

- 🚙 [@hometownjs/eslint-config](https://github.com/HoMeTownJS/hometown-eslint-config/tree/main/packages/default)
- 🚐 [@hometownjs/eslint-config-base](https://github.com/HoMeTownJS/hometown-eslint-config/tree/main/packages/base)
- 🚚 [@hometownjs/eslint-config-ts](https://github.com/HoMeTownJS/hometown-eslint-config/tree/main/packages/ts)
- 🚜 [@hometownjs/eslint-config-vue2](https://github.com/HoMeTownJS/hometown-eslint-config/tree/main/packages/vue2)
- 🚗 [@hometownjs/eslint-config-vue3](https://github.com/HoMeTownJS/hometown-eslint-config/tree/main/packages/vue3)

### Default 🚁

- 🪜 Integrate prettier, automatically repair and format.
- 🛠 Multiple preset configurations: JavaScript, TypeScript, Vue and continuous maintenance.
- 🧲 U can also format html, json, yaml, and markdown.
- ⚙️ Reasonable default configuration, best practice, only one line of configuration.

### Usage 🤩

#### Install

First u need install the packages of eslint and typescript.

```bash
pnpm install typescript
pnpm install eslint
```

Then just choose which package to use for lint according to ur project.

```bash
pnpm install @hometownjs/eslint-config-ts # ts
pnpm install @hometownjs/eslint-config # same as @hometownjs/eslint-config-ts
pnpm install @hometownjs/eslint-config-vue2 # vue2
pnpm install @hometownjs/eslint-config-vue3 #vue3
```

#### config

Create files One of them .eslintrc.js/.eslintrc.json/.eslintrc.

```js
module.export = {
  extends: ["@hometownjs/eslint-config"] // eslint-config-ts || ...-vue2 || ...vue3
}
```

#### ignore

Generally, it is not necessary to add the. eslintignore configuration file, because some configurations have been preset. If the project requires, u can add them urself.

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

The following is the default alias configuration (no need to add). If u need to change it, please change the alias in the eslint configuration file according to the following code format.

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
