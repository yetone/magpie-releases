class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1894/magpie-cli-darwin-arm64"
      sha256 "6efbcb0e040bff8c1fb8dfad6d7183bc18c91616bba01fca764defb5f023b9c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1894/magpie-cli-darwin-amd64"
      sha256 "046dedb12ed6d668d022cb93907847af4c40e0d1d96a0b10c1105b4c993a1d8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1894/magpie-cli-linux-arm64"
      sha256 "47b4c4d80da5b1344937d44a1124f56a4db8080e5de63d284a53d3385771cd3c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1894/magpie-cli-linux-amd64"
      sha256 "c3f657c5f92d4a783d223f7cce74f6430806a1ed213edf15e4929146ad8abc57"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
