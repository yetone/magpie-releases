class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2327/magpie-cli-darwin-arm64"
      sha256 "c2f0b4e709278973c5b06e9f4f1771a693c156af0bb2095f18988d653d36c5e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2327/magpie-cli-darwin-amd64"
      sha256 "6c034be1ed78cd2a61780e05f595004e50cd9fba91dd48191e1d8f5fd5a39ae9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2327/magpie-cli-linux-arm64"
      sha256 "c1f5f3d6b291fd1e2672d3a6144f3ae885e2398d1c197a81a9d717e3cf10d917"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2327/magpie-cli-linux-amd64"
      sha256 "ab5c070fabc4d5f550cbb9a19c03b203ed14c69eac1383254049a67d4bb230a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
