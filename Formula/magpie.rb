class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.915/magpie-cli-darwin-arm64"
      sha256 "06549186bf7fa08338b697c4561eb8d0e892702b45043e554e8c87eb7b0caf9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.915/magpie-cli-darwin-amd64"
      sha256 "982884ab5b1e495d3ad843d4fbe82d2327c7c310201775a35fa142c4fe164957"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.915/magpie-cli-linux-arm64"
      sha256 "57c6cb7f2c0c51043cb155eab09be9e2becf8b0dfabf2aa406e7ff19eab8d743"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.915/magpie-cli-linux-amd64"
      sha256 "bc137cae0114da54b50f3e39a6905aa15923317ad690e8b76c0046427e119aef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
