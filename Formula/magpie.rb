class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4319/magpie-cli-darwin-arm64"
      sha256 "cce9193c1d7e742bfdb9dea041ff8801ef63d25c0765c56f89e194b475e8540a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4319/magpie-cli-darwin-amd64"
      sha256 "dfbeef7aa19d7733bf2555fbc4a819f186a6a9f8476807a0d18978bc31fd3c00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4319/magpie-cli-linux-arm64"
      sha256 "dada5c38ee7e190f60919def46ef5be14e60b9d089ea75b74eed137518bef2cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4319/magpie-cli-linux-amd64"
      sha256 "34793253a24f748b06b5c695a66a806ac924c494f5e1df169715efb9509a6327"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
