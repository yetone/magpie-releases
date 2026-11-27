class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4933/magpie-cli-darwin-arm64"
      sha256 "8ba475cce949bc1700188acb51b8c839c2a8270928160416bd00a273eac8c2ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4933/magpie-cli-darwin-amd64"
      sha256 "ca0e0641c0c0e9aabdd3ca6bca84990d4bd6cb8e7b7479236d527d4e782a011e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4933/magpie-cli-linux-arm64"
      sha256 "8baec8fb690737eadecf24853ad9ecf539aad5b3083798aa6f16bc0f00a6df64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4933/magpie-cli-linux-amd64"
      sha256 "ec1c27edcda8c6c21e85f42ece97e257beaca69690805fc4f22043e8e6cbeaa1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
