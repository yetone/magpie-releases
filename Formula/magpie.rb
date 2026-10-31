class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2484/magpie-cli-darwin-arm64"
      sha256 "3add50390d369fc01878352743af2756cb086e14640d0a1763abd6ca4af8658d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2484/magpie-cli-darwin-amd64"
      sha256 "d7c090fa4e672a37d59da133a0294ba2390e39120bcb7bd043f4f736d77fb700"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2484/magpie-cli-linux-arm64"
      sha256 "669c796831569c109e55c04bb0a6c1d8a8b6ec8713cb242d4ffa79b464fac4e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2484/magpie-cli-linux-amd64"
      sha256 "2d881c4a80ab312a7984a683630bb34714d9afcc0ad0528e310f837eebd99a78"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
