class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3585/magpie-cli-darwin-arm64"
      sha256 "d449d779077f4a8f145e77ba388730ad1767e88fbc0d0e8bb193ed6491b9770a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3585/magpie-cli-darwin-amd64"
      sha256 "4a13f79b88feef6a4142aab898a10ced553c59b2e581f5f4e984ae2551f894ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3585/magpie-cli-linux-arm64"
      sha256 "268ddf06bbee8cadee4cfc15afb5ed06c9f4a29bd766eca2e6a98b02c18b1b0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3585/magpie-cli-linux-amd64"
      sha256 "f5e18e6699ede0148da89baadda3b9844b580f3b9a2dc70329b7d063faa326b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
