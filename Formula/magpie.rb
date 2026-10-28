class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1955/magpie-cli-darwin-arm64"
      sha256 "0a50cf53c50d53b97b39743f98f10cb372f375c237b09830cc33e0974bc34f8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1955/magpie-cli-darwin-amd64"
      sha256 "b5a370c0293af1d0fe93bc841a851f58f36aa2da9cb8aa7b3e6e6d02d83795c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1955/magpie-cli-linux-arm64"
      sha256 "fb8040c74dd542114498e5500c59c3ce657388992c49b754fd6db1af89d628c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1955/magpie-cli-linux-amd64"
      sha256 "1f51223d13ce01689bbe580f72d8d143c22ba96ea08a1d384b2bf1f3670b1f50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
