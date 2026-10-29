class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2084/magpie-cli-darwin-arm64"
      sha256 "4e254fb92d8c7f4a9efed404ef8bbd44ad3a7db943d947e57a5eceea4ba4171a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2084/magpie-cli-darwin-amd64"
      sha256 "d2e7a43fc65ca748425648e55bf44ca3a94e8213ce412b4e607df35d305d9721"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2084/magpie-cli-linux-arm64"
      sha256 "a3a76a0c97e44452bd5bedb28f2c429cc977cbf47262c253ffeac20bb44515ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2084/magpie-cli-linux-amd64"
      sha256 "07145621e58fc1885e18480b5accb02f271dea9ba0a06ff0628fd7a79454c0a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
