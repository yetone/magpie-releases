class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4053/magpie-cli-darwin-arm64"
      sha256 "3409b0c4eeaa364ec2e18fdced381095178b401e62a5537150e908f47f807efc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4053/magpie-cli-darwin-amd64"
      sha256 "b58c89783cba5d61eda364f2636df77aa9fab95b0c7b6b36683e59ba191dc2d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4053/magpie-cli-linux-arm64"
      sha256 "61088bf92cd47e4844cc37e6ef7ab138805ba6f88b2391416d777c4b2750d10c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4053/magpie-cli-linux-amd64"
      sha256 "53d3dd640ab5e12c754f6cede341c5dbc6c292b31fc90a8f3c87748aaf929f46"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
