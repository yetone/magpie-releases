class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1103/magpie-cli-darwin-arm64"
      sha256 "74004fe0f5f62a6e9190a33705bf93f0f82dc162532fbf60f83fef6e2283de1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1103/magpie-cli-darwin-amd64"
      sha256 "f2c73a003444642796d057d9311e11de24956d6e4b451c0fdb4cdd97e017d553"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1103/magpie-cli-linux-arm64"
      sha256 "0b60dce32f2e665e6847b5077215f801bbf77c150dc6eaa8031ba6c4aaa5f3a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1103/magpie-cli-linux-amd64"
      sha256 "86d41900b33205661bfa2e2f038ad906f36eafb41cf76f7b06d8e21816632e9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
