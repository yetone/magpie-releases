class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4314/magpie-cli-darwin-arm64"
      sha256 "74c373cf8498dced6e407168c8c5f859fe7a291deecadd474966b777eff56e32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4314/magpie-cli-darwin-amd64"
      sha256 "6b10a255528a1d2d84fd5b83f48e2af919afeec07e47dee0b6f510ad81d4d420"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4314/magpie-cli-linux-arm64"
      sha256 "a31311b0540e09470cf2c3a75f794ee42eff6145fe3b4d6c56bc00b9a0dadbdd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4314/magpie-cli-linux-amd64"
      sha256 "b1d88d7afd5e211d8992273e906455c11ea84cac31e764d47af20ac4d0a25339"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
