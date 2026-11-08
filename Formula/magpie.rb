class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3307/magpie-cli-darwin-arm64"
      sha256 "201aef27a132b7f865cf1741f9ac7c3f14ef10ef8e60350f7a7941fc762fe658"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3307/magpie-cli-darwin-amd64"
      sha256 "08143272b534f0a464c4c78c4a722f99b6bbce8dcb625ebc284d15e474dea24b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3307/magpie-cli-linux-arm64"
      sha256 "1fdc65f5dfdc58f4bd32d924c131ffe8849c7cc9498563647ffead1058da7bf8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3307/magpie-cli-linux-amd64"
      sha256 "3c3af4118eb2f9142e696bed40dc91e78f5b6f2c6723f6ba19016dee53f338f9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
