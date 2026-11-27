class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4972/magpie-cli-darwin-arm64"
      sha256 "d5bf10f5911073e28176b0ac52b25779c812ca99db2d64d0ab2eac29f1876700"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4972/magpie-cli-darwin-amd64"
      sha256 "f490028f10846167696514a16cd4172337f8944ddb03d07f84bbc3b1b31770f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4972/magpie-cli-linux-arm64"
      sha256 "32d6f91c025d02813555dda53ef4c5450239dc8975e704b91dc99a9074351936"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4972/magpie-cli-linux-amd64"
      sha256 "a086f8fc5fa1f8b8614a3d6296b2c9e75c776d12ebedec754869cd420240c238"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
