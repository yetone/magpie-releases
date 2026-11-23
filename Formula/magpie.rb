class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4717/magpie-cli-darwin-arm64"
      sha256 "4f18958c1e6a09549f8d72aa6910fb575a566f69fb279f035a3b3182fd7a30fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4717/magpie-cli-darwin-amd64"
      sha256 "9cd87af24d9c9dda7f14359843211bd9cae8d90213cc2004d5c45dbaa6aed123"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4717/magpie-cli-linux-arm64"
      sha256 "3a79c408dde229d1d304db6fc0adf990b20f6bdb1b2b604754a15f02b6097938"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4717/magpie-cli-linux-amd64"
      sha256 "460676b5af93dece59992b171a6eccfa5d922aa9170b63c3dba08b88a21b620f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
