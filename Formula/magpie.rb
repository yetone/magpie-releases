class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2080/magpie-cli-darwin-arm64"
      sha256 "be233cb42c347d03e7c7a43564221127dc313c81cc6018899272d6462d3398b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2080/magpie-cli-darwin-amd64"
      sha256 "0e3a41b18f0c7a7e8a71dfe8be4072279b7794f656f4cb6c4df11119b2749eee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2080/magpie-cli-linux-arm64"
      sha256 "1c09b5007b6da714e917d67343d8476fa503c006cdae2ac5ee3979c176df5f90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2080/magpie-cli-linux-amd64"
      sha256 "8a2fda95b48505019888cab90605be2cf5dc0e5cfa4e93e071649db429604694"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
