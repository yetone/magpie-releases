class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5034/magpie-cli-darwin-arm64"
      sha256 "e6bfe25b56c2689ac226ecc4c6c1d2126579f7adc2a98e15186adf1d5e2632cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5034/magpie-cli-darwin-amd64"
      sha256 "ca15b7c951f004f1471049f2122c5e1983ee0e77f820b93f38411d729a846ed7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5034/magpie-cli-linux-arm64"
      sha256 "2ad8d828e9035917705a89f5c6b57257ee41248978adf36a7ab706a6ff8f1c1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5034/magpie-cli-linux-amd64"
      sha256 "c380fc9e75e1f8b713508bfb22111d6c84008e3bb8f8200be50d5563ba3cc9e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
