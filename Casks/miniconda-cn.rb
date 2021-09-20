cask "miniconda-cn" do
  version "3.9.1"
  sha256 "93e514e01142866629175f5a9e2e1d0bac8bc705f61d1ed1da3c010b7225683a"

  url "https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda-#{version}-MacOSX-x86_64.sh",
      verified: "repo.anaconda.com/miniconda/"
  name "Continuum Analytics Miniconda"
  desc "Minimal installer for conda"
  homepage "https://conda.io/miniconda.html"

  # This regex restricts matching to a specific Python version. This will need
  # to be updated when the prefix changes in the latest version at the top of:
  # https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
  livecheck do
    url "https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/"
    regex(/>\s*Miniconda-(3\.\d+(?:\.\d+)+)-MacOSX-x86_64\.sh\s*</i)
  end

  auto_updates true
  conflicts_with cask: "miniforge"
  container type: :naked

  installer script: {
    executable: "Miniconda-#{version}-MacOSX-x86_64.sh",
    args:       ["-b", "-p", "#{caskroom_path}/base"],
  }
  binary "#{caskroom_path}/base/condabin/conda"

  uninstall delete: "#{caskroom_path}/base"

  zap trash: [
    "~/.condarc",
    "~/.conda",
    "~/.continuum",
  ]

  caveats <<~EOS
    Please run the following to setup your shell:
      conda init "$(basename "${SHELL}")"
  EOS
end
