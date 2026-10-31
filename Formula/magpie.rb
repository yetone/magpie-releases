class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2357/magpie-cli-darwin-arm64"
      sha256 "b0f5b92f062d2fac41d54ccf99b00aeb41f9229831c65ed5f5e1913ed4020797"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2357/magpie-cli-darwin-amd64"
      sha256 "50dcad9f55bb06b76c0b8ff25d076eefe3ced033b89b0d500c6f329270fbb225"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2357/magpie-cli-linux-arm64"
      sha256 "f0404a50a70399a920e3fb303dd376a1e1e13d98a2d5a8da4417a862fe53e478"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2357/magpie-cli-linux-amd64"
      sha256 "ebf672a6e4db83f4bcf204599d09fe1e7ad0257098a3cd6074fc6f98f24298c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
