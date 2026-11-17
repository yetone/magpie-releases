class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4345/magpie-cli-darwin-arm64"
      sha256 "49b044b881cd06c2dde2cf751f941d13494e0ed694ded5f6d2f6a51e6851d99b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4345/magpie-cli-darwin-amd64"
      sha256 "dc8846482728fdaf351ccbe4a5183d0eeff2d84393dfb8b609feba55f587732d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4345/magpie-cli-linux-arm64"
      sha256 "1a34f631a4d73b05a52937fb998149ffa3e951308e7e8916e99d82e7d4b9858b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4345/magpie-cli-linux-amd64"
      sha256 "281b44237d9b2ca32f82563eab71b2112ce3757f094e938b3e37da4a042fa55e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
