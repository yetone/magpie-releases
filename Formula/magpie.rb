class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3076/magpie-cli-darwin-arm64"
      sha256 "d769baebd58a6573387a435669ded6f51a2210e8312140cee6384d6a0fe4d7c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3076/magpie-cli-darwin-amd64"
      sha256 "763020807e29be2874c9cb6d6e1a7dcc77d247d852ac90ca8358f300d3fafcfd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3076/magpie-cli-linux-arm64"
      sha256 "7e12dc983e0d9d85a85bfacfba7a4cb8506f33bf518a735f4b5aa4161c1db720"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3076/magpie-cli-linux-amd64"
      sha256 "0ec942df3c0dfb9706a96d12a99e263abe5dc910f49c11f5e9894f4d51e1092f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
