class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2187/magpie-cli-darwin-arm64"
      sha256 "f0477434b6cdefeb8eec627453dfaf00b3c397e0c483cb0f88e2e27b9996f7a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2187/magpie-cli-darwin-amd64"
      sha256 "4613c55d83c4187e28ed95d4bd699fb24e5740f151c44b6bf5f364d218e2297e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2187/magpie-cli-linux-arm64"
      sha256 "ce2fb46574f4ec6d7872d66887e1a9b9bb7b059ab408a9228c430efae67495cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2187/magpie-cli-linux-amd64"
      sha256 "fd663e97b9eedba2c0b8d41a272bb064e438f56171a13983b83c77d31a89caab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
