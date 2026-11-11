class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3724/magpie-cli-darwin-arm64"
      sha256 "358a74f3cb0edcbc7569833687aa4951405dda18f484aa26c4d2c90706ec0ac0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3724/magpie-cli-darwin-amd64"
      sha256 "e796e4e12745f9713ae0fdbf87cf2fe7eff6c6389d1421c5ab5808875ab49747"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3724/magpie-cli-linux-arm64"
      sha256 "c44f7ee099e0e0594afad55672afd03a6f32b88bcd80352b9d1cf69fff937c64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3724/magpie-cli-linux-amd64"
      sha256 "cd56d25874684393319e864258b80cd606644d85d8838f52e6d402724b043558"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
