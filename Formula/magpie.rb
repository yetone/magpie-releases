class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4573/magpie-cli-darwin-arm64"
      sha256 "9d9867a2e1e16d64b595dcaea6ea3fedd23c4bacee7c399e1c835f2d277c7e4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4573/magpie-cli-darwin-amd64"
      sha256 "13d803f3c63bfcdec9c962d1b7ad584a35b94f8de2e3c6e87218602ebe1aba51"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4573/magpie-cli-linux-arm64"
      sha256 "ce95ac1dc17f5c0be57c2edcb76dc1b24b2bdb8c079a904e79090885ba36fd79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4573/magpie-cli-linux-amd64"
      sha256 "9fb3c3f75ad797e98be5101554c4bcf18bcebc13d08c9448fb8c093ea998aba6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
