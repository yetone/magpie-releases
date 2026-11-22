class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4668/magpie-cli-darwin-arm64"
      sha256 "8009aed73133c592056d73dffaf18acfa2327f97ddbb6d30be088cd638242686"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4668/magpie-cli-darwin-amd64"
      sha256 "b642b19e13eed378c81c784836969bfd0931cacf2d9a02854a1268173a67c9ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4668/magpie-cli-linux-arm64"
      sha256 "f83056362a769f5de99a6528f1590be8b16919fad0b8680c40d2948dcdb904a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4668/magpie-cli-linux-amd64"
      sha256 "8845bcc36e7ffcf114b38dfb4358363face9ded68d4987e2bcd513214f394d94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
