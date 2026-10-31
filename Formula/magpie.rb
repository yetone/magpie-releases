class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2290/magpie-cli-darwin-arm64"
      sha256 "6bc4121d2d5042e0d53c8a128faf734990145ad1891e6101f2af5fc7d6d84296"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2290/magpie-cli-darwin-amd64"
      sha256 "051d053c0b027b49ce98241a042b7a1d1aa3f15f73284be6e032c7a3cb0b156e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2290/magpie-cli-linux-arm64"
      sha256 "ef9125e33f3c0c829d2d7f3d9d66c158bcab9dd17c37c6dc5bbfe76675666336"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2290/magpie-cli-linux-amd64"
      sha256 "9409b34aaa19b042a76adbaa154ccf7e9be0e70ec50e6f1dfdb6c1e91561d47a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
