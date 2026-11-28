class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5025/magpie-cli-darwin-arm64"
      sha256 "779458bce8777e5afa7010f606a1e6272acc8e26d0a9a276b0376bd448749154"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5025/magpie-cli-darwin-amd64"
      sha256 "abd9c0428b152a93dfd443ad9824b53ab004c42c822b57ce782b2554ce1db0d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5025/magpie-cli-linux-arm64"
      sha256 "d1a24fd368714371954b2de5cca4c662e84d1ae7c2665ee22b85cc83b22afaf2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5025/magpie-cli-linux-amd64"
      sha256 "32a1f2bd0463dd69b1ae93e3899e322574c74476505eaa7411d636b549fb942e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
