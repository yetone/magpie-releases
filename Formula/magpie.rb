class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3273/magpie-cli-darwin-arm64"
      sha256 "95fc3f1395c6305264cb525c8ae0422ded81febf2022a57eb119e3ce74cd85c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3273/magpie-cli-darwin-amd64"
      sha256 "30b0a4b561e27853d6983af3a49f0c54e5e71c4a87320f9e5f55f5dde2a251ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3273/magpie-cli-linux-arm64"
      sha256 "40c78665f7fe925079bd2bc550d95fc29972548e86352528711e1875c28cd53f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3273/magpie-cli-linux-amd64"
      sha256 "fd72aec7ff6ad2b7268534e6c9cda22124f62d09ca72357c3dfcef376a903c9e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
