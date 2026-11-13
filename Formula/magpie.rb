class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4039/magpie-cli-darwin-arm64"
      sha256 "cfe741ffadae6fcc22a636ffff51ccc015430ca56ef164f62ccd64a55d0072d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4039/magpie-cli-darwin-amd64"
      sha256 "713164d33cddbde8289460b7f92a9e42a9053d65646fe9556b928b4489f0e9ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4039/magpie-cli-linux-arm64"
      sha256 "22932bd8b704ce2b2e26427119e023d94fe9fc3b64af49fee1da3dbed2b1cf5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4039/magpie-cli-linux-amd64"
      sha256 "7f8292e2a4bd9aee7a7f013b30a0bae312d1ed739fda4acbf063b69a2d2fb570"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
