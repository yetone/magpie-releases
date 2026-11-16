class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4299/magpie-cli-darwin-arm64"
      sha256 "f659da1917d29002957aeac092c44ebaa7ba2f2a5455ddb423831170b4ee1680"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4299/magpie-cli-darwin-amd64"
      sha256 "a09e23fd322bed7b29fb8ee67fcca5d12d9db6b0769f0d1a81c3c11373611f43"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4299/magpie-cli-linux-arm64"
      sha256 "4727f68402e02f2bc7996565bab645eb7a7a4b9ef6f8122c0b5c814a68bada08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4299/magpie-cli-linux-amd64"
      sha256 "1bc5c6575649cea425401d3cac0cbf4f55c2023b69a130b05503d0558e31f622"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
