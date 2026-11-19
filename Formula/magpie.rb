class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4527/magpie-cli-darwin-arm64"
      sha256 "1dd6493f94b0813e9bc37b7ddc3f94ef86e0b518927302ab03fc68a8f3555956"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4527/magpie-cli-darwin-amd64"
      sha256 "1a9411cfd9045dff548e1e6f1b24929df754221ace3d67cb70a333df26d9aa8f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4527/magpie-cli-linux-arm64"
      sha256 "adfb101de4de9b8ceb82bbc05545c8bb102fe2207717b867ee86a15f9159d15e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4527/magpie-cli-linux-amd64"
      sha256 "5915eb50aa593a1e0e0b511310239438e190a9e2708d354de517791f0234cd22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
