class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3684/magpie-cli-darwin-arm64"
      sha256 "c5f0d2ee56c325a85a8226ca55df019ac993536392e5d0f6e8f21daae639861f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3684/magpie-cli-darwin-amd64"
      sha256 "67887b8ab075cad3a02d544758159fa8625521c565388f2fa82fd762d109ed90"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3684/magpie-cli-linux-arm64"
      sha256 "fa28e2ec671ecc00ff7ac23d93c0ea39d6db33476bb91ed5596cc376f6ffbad3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3684/magpie-cli-linux-amd64"
      sha256 "c3ae8fd350b3db27feee027e5238310c311857257077db08a07684d8d7404a0b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
