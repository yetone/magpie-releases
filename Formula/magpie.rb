class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4997/magpie-cli-darwin-arm64"
      sha256 "1c10fd4b0663e8583f131d027a6a553665d9966c38eb37e5f7a114fced7be1da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4997/magpie-cli-darwin-amd64"
      sha256 "bca0ceadb38bf255b83705c6f3a5a1c04736cd8f6b1e686a1ac9faca10e3ec5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4997/magpie-cli-linux-arm64"
      sha256 "fcaa5d3e6b2e4375dcd03a7b7e091b69ac5d8087ba0884bd2e9235a9ac200b73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4997/magpie-cli-linux-amd64"
      sha256 "1f4b4057dbdb9d99b4c3f7ae4b79805bcccd48367b3a1e09258cd63dd3c271ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
