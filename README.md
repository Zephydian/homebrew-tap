# zephydian/homebrew-tap

Homebrew casks for [Zephdeck](https://zephydian.com/zephdeck) (formerly Zephydian), made by [Zephydian](https://zephydian.com), and for [Surabar](https://github.com/ahmastan/surabar).

```sh
brew install zephydian/tap/zephdeck
brew install --cask zephydian/tap/surabar
```

After the first install, plain names work: `brew upgrade zephdeck`, `brew uninstall --zap surabar`.

Installed Zephydian before it became Zephdeck? `brew update` and `brew upgrade --cask zephdeck` follow the new name (`cask_renames.json`). If Homebrew says the cask isn't trusted, run the `brew trust` command it suggests first.

The Zephdeck cask is updated automatically when a new Zephdeck release is published. The Surabar cask is updated by hand with each release; Surabar also updates itself.
