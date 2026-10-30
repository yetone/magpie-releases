class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2204/magpie-cli-darwin-arm64"
      sha256 "81b90a9538019d28eb7f7c26c14f3b9ed0b54601285782b2b197c261ebe08f5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2204/magpie-cli-darwin-amd64"
      sha256 "023f58d51bc3fb91bb8724061a411d66c527627510b80f7a8da6d93e8f9a02ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2204/magpie-cli-linux-arm64"
      sha256 "23c4a23756bcf8edeb5f7353c4cd6ba3cb9d82f0e60af7117b8c66a9c5df157d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2204/magpie-cli-linux-amd64"
      sha256 "108ea12962a439c0163e87d98eefa59b4282faa2348bc0ecc0baa3a4eec608fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
