class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3550/magpie-cli-darwin-arm64"
      sha256 "cdd0becf0d7ee8b80023479e864bba50e35f221eba726c858e82a602fce051f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3550/magpie-cli-darwin-amd64"
      sha256 "e3f8003742092c8dedea16f59ac9175b9d8ff5da1e58c6b3232a049fc4bbb78b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3550/magpie-cli-linux-arm64"
      sha256 "d655cffcc207fb0141d16a217f6be852609f97540bd71971109264f3b5885a64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3550/magpie-cli-linux-amd64"
      sha256 "3d71d01037d03c421d3ab229f0b602375c85d9dd670f20c0ecb666f05b91e1e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
