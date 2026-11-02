class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2704/magpie-cli-darwin-arm64"
      sha256 "1263a4afa28cfa81d54cd605c8ebcdd184b51a01c15757e0328f9f4a1caebcec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2704/magpie-cli-darwin-amd64"
      sha256 "734af02a9d22ca36cbb20296b56d46cd1f6f097fc9680822cbbe6a8e632bae2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2704/magpie-cli-linux-arm64"
      sha256 "ff93e5387754892eba2d1fa7a56136711f379a66e3ac76e8c7882c519524a892"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2704/magpie-cli-linux-amd64"
      sha256 "e34ebec3eda85bac3bfff234ebdef8cf0ab2509913ece3c069c86f3e279f5c6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
