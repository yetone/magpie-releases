class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1044/magpie-cli-darwin-arm64"
      sha256 "a3df44e01f6f2d50cbe2572f406783ec2f813a81057a1ec14399e35f6f93df61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1044/magpie-cli-darwin-amd64"
      sha256 "a99bb8be52067335edfe72703e19b4a69eecb103fcb53d9add4de5f7ba7cdfc0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1044/magpie-cli-linux-arm64"
      sha256 "d10c18fd9bba51c4b24778b35aa86abfc44d21761d73518d6bfe55882b5ef43e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1044/magpie-cli-linux-amd64"
      sha256 "603f6f2f20f040ff47e7173704729de6d573dfbf954199e033e46c38b81569c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
