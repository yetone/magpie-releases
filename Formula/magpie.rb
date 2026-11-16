class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4296/magpie-cli-darwin-arm64"
      sha256 "b95b44c896bd2c86f9aea49d966c0b4447d72069515049b71e45f1d0b282ffd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4296/magpie-cli-darwin-amd64"
      sha256 "8289b6f7da0f367631205cae9d5652ebf02358b850ee0074313381486ad0437d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4296/magpie-cli-linux-arm64"
      sha256 "bf1ccc556cae8b65e679fb130f42d93f5bce6d8a9d14dbe7368b6dcf2fa6ef6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4296/magpie-cli-linux-amd64"
      sha256 "cdf810dcfd074225dac950cb171dfd16d8e5897be45db8e63593899f0eb17e02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
