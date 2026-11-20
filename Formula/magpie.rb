class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4615/magpie-cli-darwin-arm64"
      sha256 "ae858b5f0ac761ed48174dc46d0d1a4dccde96283cbb635a7cf4e4ac874ccdaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4615/magpie-cli-darwin-amd64"
      sha256 "7e97ed36b071508ee636e485cdfc7232bbab9b7f18e8e2200832e412ed5f149b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4615/magpie-cli-linux-arm64"
      sha256 "de68c8621621fe1aaef18b963ab3bfa7aff4abebd7ad24c3bd829e97333bd4f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4615/magpie-cli-linux-amd64"
      sha256 "23fc6c3c0afb35b58a49fc9d96825fa5eb85cf7e41ac16181e79ec4f711c7677"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
