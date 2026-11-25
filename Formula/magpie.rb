class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4822/magpie-cli-darwin-arm64"
      sha256 "5d4018cb95bdfda3ce27570020607e54ddcfcd9475b339884aa0badf45bd37eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4822/magpie-cli-darwin-amd64"
      sha256 "52c20d0084d7446338c353b946c56750b60156e47e8c7cabfff8ae0beca7bcfa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4822/magpie-cli-linux-arm64"
      sha256 "3c18da37ea8b39eed79e38e4a7847f6d6e622f39b6cd145c0daf98510814a0a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4822/magpie-cli-linux-amd64"
      sha256 "89ff334c05d31b1d55436c3e30d8205228be9a8942d0580531059c533b46e9f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
