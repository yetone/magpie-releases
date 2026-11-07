class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3230/magpie-cli-darwin-arm64"
      sha256 "a7bb30027672451602e4b36ef144360d414dbc1d234ad4ca2153fc9f96263ec2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3230/magpie-cli-darwin-amd64"
      sha256 "ae0b6a6fe81af65ea4ecb7cb09914600ca935d54d54d8fd9f4a9a5091f280ca5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3230/magpie-cli-linux-arm64"
      sha256 "211a63f57e6cea9bf5f45b3c2ec9fa88ae1f4d56ce1766244009a441a0d7ec3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3230/magpie-cli-linux-amd64"
      sha256 "30418ff09b91a95487d0fd1831902911a5e6f910a0004af94dde3105059f0406"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
