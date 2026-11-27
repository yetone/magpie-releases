class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4963/magpie-cli-darwin-arm64"
      sha256 "a8fe90f5300bf217fcdacd26affef3173a075bd7ce15d86bd22c059be3085469"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4963/magpie-cli-darwin-amd64"
      sha256 "61c8b24110c11a8985c8458e694a70f6267011e2ad5a1f1d9b10e73d699ecbef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4963/magpie-cli-linux-arm64"
      sha256 "76f2a243126d947b8d21c9efc98f742069c6509fd9a5cb9cdc3a26aafd0d45f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4963/magpie-cli-linux-amd64"
      sha256 "fb5859b1775985080227a22eb0be12a07a8e1e1702a6b77bef731f4b26aaef54"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
