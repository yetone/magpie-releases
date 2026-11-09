class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3458/magpie-cli-darwin-arm64"
      sha256 "7ad8f76a8fadc2a38cdaaa1cf5d793d36e07e92d5632c200d6fc079a096c99ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3458/magpie-cli-darwin-amd64"
      sha256 "96e13a33a2eab1da44b4a1b447c6f2236e01e0854f1a085dd9355b424fe08163"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3458/magpie-cli-linux-arm64"
      sha256 "b2e4c15cb52e0a19c20468f52c9f8aab01d9ec6b34796152bbfd7c3c7512c012"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3458/magpie-cli-linux-amd64"
      sha256 "5efca41aa66d4fe8a189ff99d1d0e72bb4833ef3b43b5afdd2710aa100136373"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
