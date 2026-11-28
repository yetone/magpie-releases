class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5038/magpie-cli-darwin-arm64"
      sha256 "cc3521e4e28ab8d016aaa77686a388680862d6822b88177959355b2fdc2c3774"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5038/magpie-cli-darwin-amd64"
      sha256 "f36d95414376d4d4cf7190983d5baa9cfa54daafb5c74a09e5df39ebf62627ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5038/magpie-cli-linux-arm64"
      sha256 "c4c53a5ea09052086792cc53368eac86d69d6ef54e6a79f02f10ee0e1ba24bb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5038/magpie-cli-linux-amd64"
      sha256 "fa158ec774e548f444d1c7ac74060f1ed1df9c963d27ad3fe1ad77d88519c0ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
