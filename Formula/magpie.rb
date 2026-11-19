class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4515/magpie-cli-darwin-arm64"
      sha256 "d8b38e74936027937da5f9fa839a84ddc5c60a97cf149d585ef9e4b39f46625f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4515/magpie-cli-darwin-amd64"
      sha256 "f96bad21e7dbee32f543e00e4eab9db8268e328cf6321f0fc2c92c3c4fcb9377"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4515/magpie-cli-linux-arm64"
      sha256 "822e98285c33ad22740ce2a937a933b56afa2c7cba0b4779303a18d0460cb976"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4515/magpie-cli-linux-amd64"
      sha256 "394d7c1f8a76f2276bfce71100cab19726892f471b9403cf9dd491ea3246e88e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
