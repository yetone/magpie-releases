class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3372/magpie-cli-darwin-arm64"
      sha256 "cff5495ad937aaf9e848894a5597021c98f42a511d3a048ed4dd2a8f554d128a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3372/magpie-cli-darwin-amd64"
      sha256 "cd537e25f3273053d9ee1b878c9cbe59a4b286fc3e1e05526f621faf3f70e244"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3372/magpie-cli-linux-arm64"
      sha256 "7299852e30cce32689dc267b2beb7c9a29f5b520b9d3a4975fb798b328d33502"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3372/magpie-cli-linux-amd64"
      sha256 "58aa8ada4c8c62a29cdda0109c4662879b3b8cbd33bc6b96e24e3ac00208340a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
