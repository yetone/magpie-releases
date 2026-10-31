class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2449/magpie-cli-darwin-arm64"
      sha256 "91322010d463789e212f421fdf38abf8a1717774e5d6959e1f2d2732cd7bdcef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2449/magpie-cli-darwin-amd64"
      sha256 "92c2e764ad61ed8810eb58309604930cea716fcc749b855a0a0519c2c8803d59"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2449/magpie-cli-linux-arm64"
      sha256 "643e9cfb0461ff9033e22c970c2b6ab81c10614b5fdf54ac2b3b6ece510c0bd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2449/magpie-cli-linux-amd64"
      sha256 "332ab0ba1c10ee6e4155b7eaa1af0d54076adf2a7461678532c267390a23f3c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
