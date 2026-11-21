class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4646/magpie-cli-darwin-arm64"
      sha256 "5f2aa3d19ac20774070239f26181346d01ad6e6f8121d1379a5843a0bde50497"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4646/magpie-cli-darwin-amd64"
      sha256 "090c4ac01b568c25bf72ca2c8506c808513eb151394537c31e498a3f33f827b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4646/magpie-cli-linux-arm64"
      sha256 "cf2b84ce90f73ae2b0ddcefc1f748ff3f77f589d4217eba31cba361ce404d73b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4646/magpie-cli-linux-amd64"
      sha256 "8caafbe292228e2e5f462d0f9305cd4a4d7811ad2dcb0128922a8a8d3ab73460"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
