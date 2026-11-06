class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3124/magpie-cli-darwin-arm64"
      sha256 "8e14547ee0df148b655d41aa3cb0e999badbb70d2dd48680c7bce6ca99203579"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3124/magpie-cli-darwin-amd64"
      sha256 "4680127bec2d2ccdb65fbe68aedbdea08db66019e5916129a3a14862ba0da7d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3124/magpie-cli-linux-arm64"
      sha256 "255fafd4681aeb82337fa19bfbdb3a83e347a0cbbf0ac599fb3c717db445ed60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3124/magpie-cli-linux-amd64"
      sha256 "6fb2e8e7ea2a66c650bf86eb817b84d208de3e53ff31ad674f9ac283455ba9cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
