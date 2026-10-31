class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2496/magpie-cli-darwin-arm64"
      sha256 "51610106ac0834b5320bd576c06caf3f0b56936e22665d37a224eda37eda8509"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2496/magpie-cli-darwin-amd64"
      sha256 "987a8f236a9a5b34fc406c544bda66167902a5d2ea49a9feb369974c3621ccf5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2496/magpie-cli-linux-arm64"
      sha256 "2a683770919e8efdf8735bc3750d7d59eaac2533551027678ee195cf209cea7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2496/magpie-cli-linux-amd64"
      sha256 "a34ee4df76b432fbe5003a6230841c1251dc0b41cf50ddce4dfc7d6a1ef0b73b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
