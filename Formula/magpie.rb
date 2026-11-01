class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2611/magpie-cli-darwin-arm64"
      sha256 "a2940e8cb548a78633ad3833142b246ca681e0a11c78769a080c9c4379c76fef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2611/magpie-cli-darwin-amd64"
      sha256 "2f6fc9c6d2fbd40cc11510ca1248aa6fc92a1a4ead33265e267f77bdc98a4fbb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2611/magpie-cli-linux-arm64"
      sha256 "74e3ffc1e4ee4c0437d8f0cee610a09cf039ee59094f9c78941225470c2327d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2611/magpie-cli-linux-amd64"
      sha256 "e4b2d77c224422377809cefd51ef0de983040532f8d47dc63b8267b9bb79d105"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
