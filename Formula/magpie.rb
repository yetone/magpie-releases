class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3509/magpie-cli-darwin-arm64"
      sha256 "be29e5a3fc773ece2c4bcbf687e0f40378b905399819408c54dca9bda94b14e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3509/magpie-cli-darwin-amd64"
      sha256 "d25624f167a839e94b26e8e521a4ab8c78d1c32ea0d4490416ee1b80b2d0b9bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3509/magpie-cli-linux-arm64"
      sha256 "7c9313808743d78f1aff4f9de60728e9457d7c5e676079f18700da399210d2d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3509/magpie-cli-linux-amd64"
      sha256 "6b43a04f6b87e646b805f0d62e8376f44f3129c0508ae6e97e9b7acf1257a2b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
