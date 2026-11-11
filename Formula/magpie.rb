class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3758/magpie-cli-darwin-arm64"
      sha256 "8c657ef90e924dd70e821cc70f49b15158fe017dfc6386c03fffd825fcb77794"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3758/magpie-cli-darwin-amd64"
      sha256 "046ace19c2d170a2b17e1c5ec064de1f2b20076dcde64ecbe9bd80d90b552ce2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3758/magpie-cli-linux-arm64"
      sha256 "b59bc080ab7fbb1ba30e2c858d118ca8a1882cf914ef07b082caeb3bf827dd81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3758/magpie-cli-linux-amd64"
      sha256 "8c963dcb91d75d1c81f15dc4744cf8c36b0707e8e6936693221a9cda0f16d75c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
