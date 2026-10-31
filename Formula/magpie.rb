class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2347/magpie-cli-darwin-arm64"
      sha256 "9f2fe96529872346b4897f63d31109e10b626387cd13589b3762856a4d2e4789"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2347/magpie-cli-darwin-amd64"
      sha256 "d4610befefbc9fc2c10bf40c12abe73c9b4255799b4ec072017b28bb43a34f56"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2347/magpie-cli-linux-arm64"
      sha256 "6b27c4a6cf7dec92e5d84592f5f93f573ce58ad7c5e83495e799928d45db9550"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2347/magpie-cli-linux-amd64"
      sha256 "9b0526f0681d3e98b5f4844e86a3866f707bb70bbd2a8c595c02926014279afc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
