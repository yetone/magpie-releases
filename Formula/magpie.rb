class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2911/magpie-cli-darwin-arm64"
      sha256 "9723316314d38ad1420bfe12cb18f2461725384f48057ef8daa489b326625804"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2911/magpie-cli-darwin-amd64"
      sha256 "d2a29309ab5d19c22a18d152d6ca9f0ed6df1996f056f32f9308aa8d1b8c1edb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2911/magpie-cli-linux-arm64"
      sha256 "3b0ad14504e1e1b09aeadab041fd5f9df851595d9eced84271d661f104a4f491"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2911/magpie-cli-linux-amd64"
      sha256 "190d22895501ff2b002d3e44a0797d271cfb9b5cb0dec2bde66e6e946efa4e30"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
