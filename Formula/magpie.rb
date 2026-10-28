class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1947/magpie-cli-darwin-arm64"
      sha256 "56a9440ab702b26921492ff068341b807a4011698fc53a3b1c3171d6a872d123"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1947/magpie-cli-darwin-amd64"
      sha256 "d953ec044474b5c0596706e9645c6e90e5f55aa06473cc5bd5e7ae001ced924f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1947/magpie-cli-linux-arm64"
      sha256 "3018178784f0eb90c539abdbf0693beab14286d0ddf34d4991f0e2937b5d5018"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1947/magpie-cli-linux-amd64"
      sha256 "fda689b643399f1781a3de3c6221027d6b2c3fd55e0ae3fb58927ec0fc3bac22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
