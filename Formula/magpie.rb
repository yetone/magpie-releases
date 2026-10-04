class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.899/magpie-cli-darwin-arm64"
      sha256 "44ff780d9a2ca1e80a27d9e39b05d20521988b16c7e92d82a7cef14c39b465b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.899/magpie-cli-darwin-amd64"
      sha256 "0e116cea7ae5f8b208eebe13a813e821d856b29cc8164ae26ff92695024b985d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.899/magpie-cli-linux-arm64"
      sha256 "5b831303e6a880548aabf0b6d0f3ba60b7ec7c9d7f937b7779fb77b24dd8d9a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.899/magpie-cli-linux-amd64"
      sha256 "3b4198df2e9c8dd5a7d1e19a38d85d0781df6cdda8441c2c3357cb399f910394"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
