class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4280/magpie-cli-darwin-arm64"
      sha256 "7bef423620c5b1377487551cd64d127141ffc7c618b4dea5b9f4e6e8028d0584"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4280/magpie-cli-darwin-amd64"
      sha256 "72ef7348492feeff806dd6fe5889b2b5d8f52cf813b12746079cfa8831c47fcf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4280/magpie-cli-linux-arm64"
      sha256 "dd216c1225d6ff068e2d0dae2a115a7f3da3a2c1dc8300e8ff5ab41bd2776ab4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4280/magpie-cli-linux-amd64"
      sha256 "116e13fd0b272c679abc132918bac20a530add929fe18f2c784d1e0c8d4c04ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
