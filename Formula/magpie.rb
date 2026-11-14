class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4104/magpie-cli-darwin-arm64"
      sha256 "845bc8003e88a7ece532a27e1e995b71237bc541118bd3b9482a64b79827e5ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4104/magpie-cli-darwin-amd64"
      sha256 "2189a3a25da76403d59903f30c9c57eeab9a661ed53ce0d8f8ac04f2df51cd73"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4104/magpie-cli-linux-arm64"
      sha256 "0e1c917ea1ff218c13a655a53add1292fe586071653e00fa8eb1b23b0c34fc8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4104/magpie-cli-linux-amd64"
      sha256 "7bc100b5453006cd47f1d94767bb26b6f1c331bdbbc90e69763873318b455647"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
