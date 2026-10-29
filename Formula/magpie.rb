class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2050/magpie-cli-darwin-arm64"
      sha256 "41d670cefd9a098863ca893141d04997e74156fc46a45d62ce4f5e35aeccd802"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2050/magpie-cli-darwin-amd64"
      sha256 "284f987ed52f57a39bb79aa1a6b491aa641204b954c0f464f763ce3469651894"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2050/magpie-cli-linux-arm64"
      sha256 "34f87d1b6fafd58b3aaec0a34167a6b17f8d6c92f2c270d9d9352daa35422d2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2050/magpie-cli-linux-amd64"
      sha256 "b3ffaf5fc876c4315a07fbaccb72f36f8316e73ca1e1dbae5b608d6eb7a8216a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
