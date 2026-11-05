class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3039/magpie-cli-darwin-arm64"
      sha256 "5e76c0950a01e0ff5d7bfa9379010f6bbd7937c16ea4200e00629b7d613bb431"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3039/magpie-cli-darwin-amd64"
      sha256 "a9c325d5e0504fe2cf2cacbdfb1e3ddab1cbade84c301216a6204c4f6674273e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3039/magpie-cli-linux-arm64"
      sha256 "d566f9d7f960c3d81ee1bc931e19ea0aa38e74ea832b44cf2d149025c88de012"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3039/magpie-cli-linux-amd64"
      sha256 "fa739e2893acb9fce5cdf78d8518574bc6b848b04c83c45cb7ec194a93704466"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
