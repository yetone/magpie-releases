class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2762/magpie-cli-darwin-arm64"
      sha256 "fed326cd09a46ec07ea29aa71e96791aa11c0348c124c5b332582f56a17a99dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2762/magpie-cli-darwin-amd64"
      sha256 "c47192cf70dda164feae510f71c553b64c233a8465ef684b03eb1c8c192ce6b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2762/magpie-cli-linux-arm64"
      sha256 "cc24cdbd3160b68409a03a3d2175fb7feecb057ca69490324b82eaaf6825066e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2762/magpie-cli-linux-amd64"
      sha256 "60b360b37b95178d40e994a399a717577304023476ab4d02804eeed44d0ca218"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
