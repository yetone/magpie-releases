class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4552/magpie-cli-darwin-arm64"
      sha256 "d995b63eefc89bcf7b1bfaf6ca7209643e02ff4d23ffafaa00ea2c9d569ef476"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4552/magpie-cli-darwin-amd64"
      sha256 "d3b874b7625728aa79a080b000921dedec3b7d4ba43bf9e14058028c855010ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4552/magpie-cli-linux-arm64"
      sha256 "1a2f81786a903a52daf9f2c23edd7f404ed56b119666dec6e9643926e87dda18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4552/magpie-cli-linux-amd64"
      sha256 "9890aab9227f6ab27626c0644596ca67c5ee8b360afd77a18515d05869585b80"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
