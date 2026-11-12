class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3891/magpie-cli-darwin-arm64"
      sha256 "55f3a05b562a33eb3535eff8820b22cc2ec06f608f9e76b97cbbd5ea128f922e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3891/magpie-cli-darwin-amd64"
      sha256 "1835c5a0e406cc15b6137cfb1310c7c7ae440b7b8aa1c423c4345cfd39b2425c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3891/magpie-cli-linux-arm64"
      sha256 "d904bfa9e36401a36fc025c2f36213f32c6ffac92a1638d26c62733c2eee2519"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3891/magpie-cli-linux-amd64"
      sha256 "45b87a38d565669b6a6273fee979af6dcf81d67dd951317e0d1c7df6a5bdd07d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
