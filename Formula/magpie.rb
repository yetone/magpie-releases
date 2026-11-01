class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2535/magpie-cli-darwin-arm64"
      sha256 "c974242d8206ec86a82f50a5f8da4047abe6e1c3566f6f2f6ab8a520d7b37f5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2535/magpie-cli-darwin-amd64"
      sha256 "a57958cd21f3dd42fcca15c374cfb73aa3b2079652029982adf71a127a78879d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2535/magpie-cli-linux-arm64"
      sha256 "8a67fdf9bc5b328c35075f0bac5c237701fc56f8c1566448f0b970107c92e7a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2535/magpie-cli-linux-amd64"
      sha256 "8e5ee1f0d4f5d9f84196722ae26e50a406dd7ee97e2f8d9d87c84c1ccf970aba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
