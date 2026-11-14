class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4181/magpie-cli-darwin-arm64"
      sha256 "ecfe3c7ad7964790c966c73715a6efede9d75384b46ef325b9284de5ae9fd3c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4181/magpie-cli-darwin-amd64"
      sha256 "a0c49aed61a0cd4d03e5d909f4246c9f219b807e2af0c46918cfdb021cf77d24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4181/magpie-cli-linux-arm64"
      sha256 "05bdcedf099ab5a1943ba5d543c76a29c57e702ad3917e06d0c5fe51a4a1f049"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4181/magpie-cli-linux-amd64"
      sha256 "81c67fa87e996b4376a4b7c49b0069dd7b076a1f85db64d0a0feb76649b3c76e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
