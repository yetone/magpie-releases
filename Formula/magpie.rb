class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4386/magpie-cli-darwin-arm64"
      sha256 "03eb2cbfe53fc9da4b512a9d98a7bcf520bce6596aa791de68c1c733063b2812"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4386/magpie-cli-darwin-amd64"
      sha256 "76f57d2b29f31417b95530ed7cf4bed6123d2ff88ffe99165250f66d862acd2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4386/magpie-cli-linux-arm64"
      sha256 "3242d796e40b871d8fcc59052404e5f8d3f7933b78565c3f6f34a16357cbb4f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4386/magpie-cli-linux-amd64"
      sha256 "e6057ba06143868e8e9acd474b11fdf9db5791c78f49f23496b24979a62bc3db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
