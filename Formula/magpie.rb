class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2320/magpie-cli-darwin-arm64"
      sha256 "2e7ea3fe77b9b68ad27b7098f193840e7ae6b9a636eaa87485e14788d3142cde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2320/magpie-cli-darwin-amd64"
      sha256 "5a1fe0c8e5801e6699d6963902fc0af2d6d61d6421ea5f27cbfa1f1d3be30000"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2320/magpie-cli-linux-arm64"
      sha256 "7af0f9d5f854e727cf2d304051faf87dacef34cda4d1e2b07c7913750c2a8b1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2320/magpie-cli-linux-amd64"
      sha256 "d7c85d0b81f19f73f66b4b9ac01d8221aecba66181e2bb15771926eb78027236"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
