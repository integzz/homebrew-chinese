<div>
  <div align="left">
    <h1 align="left">Homebrew-Chinese</h1>
    <p>
      <a>
        <img
          src="https://img.shields.io/github/languages/code-size/integzz/homebrew-chinese.svg"
        />
      </a>
      <a>
        <img
          src="https://img.shields.io/github/repo-size/integzz/homebrew-chinese.svg"
        />
      </a>
      <a>
        <img
          src="https://img.shields.io/github/license/integzz/homebrew-chinese"
        />
      </a>
    </p>
  </div>

  <p></p>

  <div>
    <p>
      一个致力于服务国人的
      <a href="https://github.com/Homebrew/brew"> Homebrew </a> 🍺 第三方库
    </p>
  </div>
</div>

本仓库主要收录以下软件：

- 国产软件
- 开源软件的国内镜像
- Linux 软件

# 开始 🏃

## 安装 Homebrew 🍺 🚴

在终端中运行以下命令：

```bash
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
```

有关更多信息，请访问 Homebrew 官方网站，网址为 👉 https://brew.sh/ 👈

## 从本仓库安装应用程序 🚅

### 第 1 步：添加此仓库并进行更新，么么哒~ 💋

在终端中运行以下命令：

```bash
brew tap integzz/chinese
brew update
```

### 步骤 2：安装应用程序 ✈️

- 通过 `brew search` 命令检查 App 的确切名称：

```bash
brew search <app_name>
```

``` bash
brew install <app_name>
```

- For specific installation

```bash
brew install chinese/<app_name>
```

#### 推荐：添加官方仓库 🚀

```bash
brew tap homebrew/homebrew-cask
brew update
```

#### 用于 Homebrew 命令 📖

```bash
brew help
```

## 总结 ⭐️

<details open="false">
  <summary>Casks</summary>
  <br />
  <table id="casks" border="1">
    <tr>
      <th>App 名</th>
      <th>Cask 名</th>
      <th>是否原创?</th>
    </tr>
    <tr>
      <td>Copy Translator</td>
      <td>copytranslator</td>
      <td>
        <a src="https://github.com/Homebrew/homebrew-cask"
          >√ 已迁移至 Homebrew-Cask</a
        >
      </td>
    </tr>
    <tr>
      <td>HoststoolforMac</td>
      <td>hoststool</td>
      <td>
        <a src="https://github.com/Homebrew/homebrew-cask"
          >√ 已迁移至 Homebrew-Cask</a
        >
      </td>
    </tr>
    <tr>
      <td>MagnetW</td>
      <td>magnetw</td>
      <td>√</td>
    </tr>
    <tr>
      <td>Multrin</td>
      <td>multrin</td>
      <td>√</td>
    </tr>
    <tr>
      <td>RustDesk</td>
      <td>rustdesk</td>
      <td>√</td>
    </tr>
    <tr>
      <td>SageMath</td>
      <td>sagemath-cn</td>
      <td>√</td>
    </tr>
    <tr>
      <td>WPS Office</td>
      <td>wpsoffice-cn</td>
      <td>√</td>
    </tr>
    <tr>
      <td>YouTube Downloader GUI</td>
      <td>youtube-dl-gui</td>
      <td>√</td>
    </tr>
    <tr>
      <td>坚果云</td>
      <td>nutstore-auto</td>
      <td>√</td>
    </tr>
    <tr>
      <td>每日法语听力</td>
      <td>ting-fr</td>
      <td>√</td>
    </tr>
    <tr>
      <td>每日英语听力</td>
      <td>ting-en</td>
      <td>√</td>
    </tr>
    <tr>
      <td>每日西语听力</td>
      <td>ting-es</td>
      <td>√</td>
    </tr>
    <tr>
      <td>西语助手</td>
      <td>eudic-es</td>
      <td>
        <a src="https://github.com/Homebrew/homebrew-cask"
          >√ 已迁移至 Homebrew-Cask</a
        >
      </td>
    </tr>
    <tr>
      <td>爱思助手</td>
      <td>i4tools</td>
      <td>√</td>
    </tr>
  </table>
</details>

<details open="false">
  <summary>Formulae</summary>
  <br />
  <table id="formulae" border="1">
    <tr>
      <th>CLI 名</th>
      <th>Formula 名</th>
      <th>是否原创?</th>
    </tr>
    <tr>
      <td>Bottom</td>
      <td>bottom</td>
      <td>
        <a src="https://github.com/ClementTsang/homebrew-bottom/"
          >修改自 bottom</a
        >
      </td>
    </tr>
    <tr>
      <td>Dust</td>
      <td>dust-linux</td>
      <td>
        <a src="https://github.com/TGotwig/homebrew-linux-dust"
          >修改自 linux-dust</a
        >
      </td>
    </tr>
    <tr>
      <td>网易云音乐 TUI</td>
      <td>neteasemusic-tui</td>
      <td>√</td>
    </tr>
    <tr>
      <td>Tldr</td>
      <td>tldr-go</td>
      <td>
        <a src="https://github.com/isacikgoz/homebrew-taps">修改自 tldr-go</a>
      </td>
    </tr>
  </table>
</details>

<details>
  <summary>style</summary>
  <style>
    table {
      border-collapse: collapse;
    }
    tr {
      text-align: center;
    }
    td {
      text-align: center;
    }
    summary {
      font-size: large;
    }
  </style>
</details>
