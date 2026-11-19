class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4543/magpie-cli-darwin-arm64"
      sha256 "cb6757e3b86dfb811f11ac70d527e4c1df3c1aa4a675a1b0078be1e279430a39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4543/magpie-cli-darwin-amd64"
      sha256 "aa88d7ea29b89f0b0306b5775dcb952d90bc86a726adf05cfc7cf88025d73c41"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4543/magpie-cli-linux-arm64"
      sha256 "3e8b814ad72023e45e320e03b603fd3a38bca77f713c9ffa0dbd6c9a50371ba8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4543/magpie-cli-linux-amd64"
      sha256 "8c619b1686714428fe058c64994570cfc9fb49c2a5306b338ac92a23ce427f2e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
