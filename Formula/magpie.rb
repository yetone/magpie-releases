class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2380/magpie-cli-darwin-arm64"
      sha256 "29670696b998768f78b623692f091da798740558efa8f0508b41a70ee9c8be9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2380/magpie-cli-darwin-amd64"
      sha256 "f986095beb100bdb3b9ca2574ed5364073eecd94d90b65dee88e9d27122dbda6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2380/magpie-cli-linux-arm64"
      sha256 "bbfd05dd137729842c88e782f84db541b03378260793b222f98c853e25eed4d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2380/magpie-cli-linux-amd64"
      sha256 "f6ed630e251564264615ffe6988edcec8250c2a2d3a7e0f1ee710466dfacd378"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
