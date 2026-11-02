class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2716/magpie-cli-darwin-arm64"
      sha256 "88b60df5f868d1ed94a8aeef23f4ed7c831d94949c7e133c40a9d65fd6ef6202"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2716/magpie-cli-darwin-amd64"
      sha256 "49917998a241e456e4093bd16957c0811f7b74bfd0ac930d7abb5c941382f0ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2716/magpie-cli-linux-arm64"
      sha256 "4220706def1a7dc741a2c08dc8a2e20611beef99ec7ac85a03f8f432696fa8a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2716/magpie-cli-linux-amd64"
      sha256 "88ef8c95827f632b6241117a73e6bbfa8660e6f3d7ebbd6b1d3e1dcb51f4137a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
