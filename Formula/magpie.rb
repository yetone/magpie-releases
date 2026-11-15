class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4246/magpie-cli-darwin-arm64"
      sha256 "aefe322c66be920e1686a5dbafbcff3586c5c8faf6ef1674c7e35938ecd71bb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4246/magpie-cli-darwin-amd64"
      sha256 "a05cc998b3ad71f2f753486ddd70130995cb7a6a3f8336f80b33deb87009cde3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4246/magpie-cli-linux-arm64"
      sha256 "c939aad0eef6e2be69559e9e77f52c0f4e7b8ee532ca1a5c472d5b0b1bef6f48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4246/magpie-cli-linux-amd64"
      sha256 "f3a2832997a0dca0e3c7a79f0098c69bb78b59c004cb1b2d6e315bd7049664d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
