class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3026/magpie-cli-darwin-arm64"
      sha256 "98a10e8980cb020f3ebce8e194d14fe37c21b56a57752c40051a4c50459693eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3026/magpie-cli-darwin-amd64"
      sha256 "a94a36ef1cdbdc2a12dbaf5ba17d987f6937f23b52c14f994bbe1e35f63aff26"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3026/magpie-cli-linux-arm64"
      sha256 "a5ded1ed743550b83e83133c325795d65a3ed248e24eefaf911722e96e7ffdeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3026/magpie-cli-linux-amd64"
      sha256 "db5e58a733650acac688d10d7bfaf595baf7ef269b99610933d8c998962dfed1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
