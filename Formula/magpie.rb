class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4313/magpie-cli-darwin-arm64"
      sha256 "c9b2f7c926df31ee8e2422a9149efe021bdd32ad3f47091e5d63dac8ae56d8d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4313/magpie-cli-darwin-amd64"
      sha256 "19e57ab858e408d3e0b880a1e9c432c4236c45addd7c7f7f8436a82e5eda1fbb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4313/magpie-cli-linux-arm64"
      sha256 "a04b7b21feadbdb1530720464e5cbb09fdde4738e2b666f8b711c606029fc090"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4313/magpie-cli-linux-amd64"
      sha256 "28a664c494a1e596fb9e8ccadfb711a99f21c3b495ad396a2d8094c573ec812c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
