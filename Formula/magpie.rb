class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3055/magpie-cli-darwin-arm64"
      sha256 "2932a2489ad6c2b3e488661ac6346e7119ca9f98503619b1ade17dff4cddf39a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3055/magpie-cli-darwin-amd64"
      sha256 "c7ac1bba5c5b6f155b7fe5d0815fb6e879534c2f34692c4f43b2e6f504c66d79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3055/magpie-cli-linux-arm64"
      sha256 "47a686bb6b297d6fbf5733d29328961d89b7f5900c61db701bfd2c0c0d4280a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3055/magpie-cli-linux-amd64"
      sha256 "e9480ec50434ece7dffaf6dbce7b3fb4286e9e562d3cc59a5d3621e840975d41"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
