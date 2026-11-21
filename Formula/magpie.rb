class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4629/magpie-cli-darwin-arm64"
      sha256 "f2ab3a9e86327652d34b74d7137643e454f04ad8a56d7fe0e7ca2b7934891a27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4629/magpie-cli-darwin-amd64"
      sha256 "0a11927520ae54ce317861105bd5011713fe9c4d624810bb1d34668e9ea8e0d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4629/magpie-cli-linux-arm64"
      sha256 "d0233024ff8be13a44e66ec566ce4d7e5fbca2e30ddcad4f01159d10515758b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4629/magpie-cli-linux-amd64"
      sha256 "bb6ac4556d3ab88d48736dcafbd620637d9b18732303c7cec13850fc5939816d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
