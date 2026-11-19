class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4535/magpie-cli-darwin-arm64"
      sha256 "3454eacb0aad3e7c5c2baa45b169ecd304b15ddcc511c1167fccd7a38001389e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4535/magpie-cli-darwin-amd64"
      sha256 "2224887b6dc5f04b459860a7ff3c6b5d6703da9ec8d109b461c8b089761050ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4535/magpie-cli-linux-arm64"
      sha256 "37caefb2a1faf1b4328bdc8d9acf18b4d45a0fac8334f92c37def37c6260df10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4535/magpie-cli-linux-amd64"
      sha256 "6773a811ff9a0e9a0f06fdd20921c7dd293f3c6a6feb82a70c7badd755822e2b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
