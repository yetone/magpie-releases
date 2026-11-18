class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4471/magpie-cli-darwin-arm64"
      sha256 "aea5c1575ebcdf8c0ef5a6c71069fbc0dc62d50bc6eeaf1810b382d6dc404435"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4471/magpie-cli-darwin-amd64"
      sha256 "1eccbd545982fcd226d39cb3a9809793cc312cbb56a654340f821326f65043d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4471/magpie-cli-linux-arm64"
      sha256 "83a459df82748e37d235961fac0d6f24bcb1b9cc23ca6bedca852319575ccc0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4471/magpie-cli-linux-amd64"
      sha256 "0244dd0d1bd3a811ca2bb9fde848ed6ecd468b01bb15cc30485995660cccedf2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
