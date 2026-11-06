class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3169/magpie-cli-darwin-arm64"
      sha256 "33e221518a0a60bfd65f7d6e4d30646ea634a83cee803d20bac9848e31b971cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3169/magpie-cli-darwin-amd64"
      sha256 "c3da37af5b4e049611905666d393314e13a1356c359dc3f4a094e6f9b2df4c87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3169/magpie-cli-linux-arm64"
      sha256 "9a6a3291cbfc0fe90e9c16589247b556dead7a7bb54ffac4d545d94256d667a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3169/magpie-cli-linux-amd64"
      sha256 "f910611a43516b67b21717dbaf036a0168b45336126cd2d8547dc25f9a18a0cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
