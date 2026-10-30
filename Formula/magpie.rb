class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2271/magpie-cli-darwin-arm64"
      sha256 "dd0408fbfe9e9f16d05ae09adeb96b2c0d86e05cdaad787669a72976c148ea80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2271/magpie-cli-darwin-amd64"
      sha256 "86095e3023c1d12fe812cdf58e8b58648a09c1e330de6c6fdd55f32853df6612"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2271/magpie-cli-linux-arm64"
      sha256 "52dfc514682c45e74cb2acdd603df7cec6d21ff97e4fc52d4c85f182d1579b05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2271/magpie-cli-linux-amd64"
      sha256 "bfde6dafbe84c97e3400789bcfa7aeb9e36a7122f1f2ecb2a6df7c38d1f95bc3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
