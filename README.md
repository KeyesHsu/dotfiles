<h1 align="center">Welcome to dotfiles 👋</h1>
<p>
  <a href="https://github.com/KeyesHsu/dotfiles/blob/main/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

> Personalize my system

## Usage

Link the dotfile to the home directory or other location where it needs to be.

For example:

```bash
ln -s "$PWD/.tmux.conf" ~/.tmux.conf
```

Spaceship prompt file is for v4 version: [Announcing Spaceship v4 — the faster, the better](https://spaceship-prompt.sh/blog/2022-spaceship-v4/), and keep the configuration within `~/.config/spaceship` folder.

```bash
mkdir -p ~/.config/spaceship
ln -s "$PWD/spaceship/spaceship.zsh" ~/.config/spaceship/spaceship.zsh

# Link to the custom section
ln -s "$PWD/spaceship/spaceship-section.proxy.zsh" ~/.config/spaceship/spaceship-section.proxy.zsh
```


## Author

👤 **Keyes Hsu**

* Github: [@KeyesHsu](https://github.com/KeyesHsu)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/KeyesHsu/dotfiles/issues). 

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2021 [Keyes Hsu](https://github.com/KeyesHsu).<br />
This project is [MIT](https://github.com/KeyesHsu/dotfiles/blob/main/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
