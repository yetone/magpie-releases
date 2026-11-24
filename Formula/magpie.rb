class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4760/magpie-cli-darwin-arm64"
      sha256 "acafa49dfdad9c23f828de96fc883c951810ed1d73daa07e695ece1f8dee03df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4760/magpie-cli-darwin-amd64"
      sha256 "6786fda6035fbe685591922945973d41745541815b0d56059cadc4888695b28d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4760/magpie-cli-linux-arm64"
      sha256 "29eec0c0686981c1ba95b6b142adfe184e106cddc63ac94fa79b4e6ab12c9c9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4760/magpie-cli-linux-amd64"
      sha256 "6d199f4848800ab4d2f25ac0f5dcda9f64bd0abdcf1646f4a82cf3194b120fd9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
