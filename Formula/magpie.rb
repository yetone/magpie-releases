class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2410/magpie-cli-darwin-arm64"
      sha256 "5a48f64500ed5acf41f77c0b215e7d6fd2ffa4d9c6be1a3c4952965e9bfd63c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2410/magpie-cli-darwin-amd64"
      sha256 "fb22515d40e931cffd4736819f1b48d00c6b0c82ed9c92db5e2f3ab2ae8116eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2410/magpie-cli-linux-arm64"
      sha256 "eb7405284f00f09b44d561df1f872c2665558faf540830d905edfa2d7b8e7773"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2410/magpie-cli-linux-amd64"
      sha256 "15ec8cf129bb77ce0c01754a2c91ac497eaf25fc7f070884dd00aaa28b9b0e51"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
