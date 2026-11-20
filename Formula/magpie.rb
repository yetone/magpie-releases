class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4579/magpie-cli-darwin-arm64"
      sha256 "a8e99ed00ea69e0f0da191628a4ec2bae826def6781f9a93a0c8b2d03233f3b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4579/magpie-cli-darwin-amd64"
      sha256 "c5f0dd1b6d838f337c8262f40e0d388e0022282284aa12675cf52be9ddf15840"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4579/magpie-cli-linux-arm64"
      sha256 "5434eef6afbdc1813260a6324e86ad415ff7c7aa01c70222a9b7f848833b0ae8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4579/magpie-cli-linux-amd64"
      sha256 "abc6351c44da9711b06049be8fa3017be3977a110a3a54994368d297bba421e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
