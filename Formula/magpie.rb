class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2555/magpie-cli-darwin-arm64"
      sha256 "b1ca2ec08c7261fde605a231a3ff68b27481f876beae7a84b7b9628e7506a8ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2555/magpie-cli-darwin-amd64"
      sha256 "107da4b14902f875c8f172e5f3d05e45113649948dfb575552267c15ab064cc1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2555/magpie-cli-linux-arm64"
      sha256 "57404ab177ea1393c482c4a14c903e2790d4b1e1f0fab20aa77bd1de8a0c888d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2555/magpie-cli-linux-amd64"
      sha256 "38c44dded9185d7f016cf7d328e71cadf13ca5695af6ea725dd5f94f57b43dce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
