class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2324/magpie-cli-darwin-arm64"
      sha256 "af57c624ca5d0063092a3571b73d5d690768dc70beadc6fb60810cfda05ecd89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2324/magpie-cli-darwin-amd64"
      sha256 "c23cb781d39ecdf35b78905a02e8be62b5403193d1cdfd9df06a5020ce3bf61b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2324/magpie-cli-linux-arm64"
      sha256 "d06e4c58f7b7941ba441232ed01228cd009c546de069bcdeb5468fda05b216ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2324/magpie-cli-linux-amd64"
      sha256 "7ad8494b5a48bb247a1984d5b651bb1589caded9b101fc66eef4d3323057051e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
