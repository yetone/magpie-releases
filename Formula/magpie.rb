class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3106/magpie-cli-darwin-arm64"
      sha256 "72b0fa2af2a7b6bae64b88e0781e6a4de96b7e299b4bffd8dc31da172ba7c347"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3106/magpie-cli-darwin-amd64"
      sha256 "e6d15f8acd158906d19a9027b732dc770730f78f5ed14bd2738191860d7aad61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3106/magpie-cli-linux-arm64"
      sha256 "f6f5b1b50b1c64644bc530f3af7d5fc3ea9f6178cd7044ca4af6a8183cae406e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3106/magpie-cli-linux-amd64"
      sha256 "7753d87c1483c3f86628f06365ba25ab11bb7ee1a931e05e34a72bbf474cbf23"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
