class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2277/magpie-cli-darwin-arm64"
      sha256 "eb44d39ee6bfd1cdc838a808cbd6b9936a2a6681f0abce09e0c5468d58ad63bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2277/magpie-cli-darwin-amd64"
      sha256 "8e8ef87f9fc99121b204c919f76eae95e8bbf8941a2473fd52b8309b38109051"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2277/magpie-cli-linux-arm64"
      sha256 "2deb155e4014755436aff5fce582331364251a4363dbfbe1df7be3f4ca5e3416"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2277/magpie-cli-linux-amd64"
      sha256 "60755663931c5eba7fcf0ab910606a07ee57a9cd2cb277d0c7c3678807191544"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
