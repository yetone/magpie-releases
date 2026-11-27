class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4917/magpie-cli-darwin-arm64"
      sha256 "a7577a4bef8262512f7d6687281cbc0194fce1b5f8cca25182b58bfc326d216a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4917/magpie-cli-darwin-amd64"
      sha256 "40790f7097f22f6246fa072535258740ad7d53acaae6627338370c4ef2ba2940"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4917/magpie-cli-linux-arm64"
      sha256 "02fe8ffc379dfdfc15e7fbaf03e1414f3e386bdbd004428ff52f0021ef6b688f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4917/magpie-cli-linux-amd64"
      sha256 "956dbb938824cd518263d688b3202223e1bed5d976509fc8cef52509851d5b5b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
