class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3836/magpie-cli-darwin-arm64"
      sha256 "e9269d6ec979d9a3a667a40e0188bbdd7ccd5f9397c45176e04f3c9be8d758d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3836/magpie-cli-darwin-amd64"
      sha256 "a22ca8a8bfd09c1edef8f77b957ad5922a00cad2ebdf329f8f0ba0ed6cdefc74"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3836/magpie-cli-linux-arm64"
      sha256 "166bfa9e65eff5a5d7a8b0071394c220043c4d7814829223660d0e7d2da8eb6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3836/magpie-cli-linux-amd64"
      sha256 "804148de15e6d2717425175a766505a198533ec879d4109c4177f9daf15e2575"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
