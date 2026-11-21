class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4640/magpie-cli-darwin-arm64"
      sha256 "eeec089c4cd164b6cc5e29f516983258b7a8241c05d9f6c755e45c75d208356f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4640/magpie-cli-darwin-amd64"
      sha256 "c4b0758682f7498fd2ee190649589622229cb326584e5b60d6e3059a4cc4441c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4640/magpie-cli-linux-arm64"
      sha256 "9b37c60487f61143e9d696785d44e2804849fd8744095190c5beb86d0d04b7b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4640/magpie-cli-linux-amd64"
      sha256 "dfd2c5c454f9d601cab6decb0e6b2492188809a70405fa0c0f829e6352eebc28"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
