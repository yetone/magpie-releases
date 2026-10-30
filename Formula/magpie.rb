class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2191/magpie-cli-darwin-arm64"
      sha256 "acb3853f4357ee4977699a38d2d2a65f19af86f625b17118384648b9a28fcf8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2191/magpie-cli-darwin-amd64"
      sha256 "e1ff99ce3e7d7dd6cea7518ed7afed540968643f679b215b45b683d66924d720"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2191/magpie-cli-linux-arm64"
      sha256 "2ee7c78f8d2b63c5b3224140a84621d3673473ae0664b3f83df075e65085b208"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2191/magpie-cli-linux-amd64"
      sha256 "bcd8ae7d81938a46eaf7a09a4bb199660505a1d68d50585a04988b27eb64a601"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
