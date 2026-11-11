class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3793/magpie-cli-darwin-arm64"
      sha256 "61f1cf8f475f61af5af5ba5562dd14bb395a5eb82424849f273842d7d10c1f81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3793/magpie-cli-darwin-amd64"
      sha256 "7e3f860e46a4073108f7238e7c4d0e983753e8467939a5da18d5ab27a19e7992"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3793/magpie-cli-linux-arm64"
      sha256 "bb3235e07201de558cd510c1e0fc807137df8913718bdd6643a8a99021b0e099"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3793/magpie-cli-linux-amd64"
      sha256 "9f59b8f964392308f1ce4a6365fadfa60db6a7504e87bf6d5b861cf12e625f12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
