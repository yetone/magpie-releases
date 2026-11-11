class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3732/magpie-cli-darwin-arm64"
      sha256 "feb3610cd91f5269a60b3caf46372a8916159eb92c1c30e91f1ee7d8b53773ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3732/magpie-cli-darwin-amd64"
      sha256 "a73585a73382c7f31217feb156888c312b392bf529315662e720280cf02372dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3732/magpie-cli-linux-arm64"
      sha256 "030a1adbee8c643ff9dcc32424857ced94fa3f4aa23e1c94073f006edd7f06ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3732/magpie-cli-linux-amd64"
      sha256 "142118dabf149bc3d2059d8b87400af7e20b69fd0453d23196a12122ae0cba81"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
