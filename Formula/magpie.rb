class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4414/magpie-cli-darwin-arm64"
      sha256 "5c9713f3e33b1b7beb82f4315dbcb8328f2a125b34d7d2aa26bf0aa7f5cd7ea6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4414/magpie-cli-darwin-amd64"
      sha256 "edd1ece3041172cad012834d650b3fd57369c242adca494364431f0fd88d1236"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4414/magpie-cli-linux-arm64"
      sha256 "b0b50da7979cbb213fd9d416fa013db8cfc5fd74aa5a05b3ce30520e693b7ffe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4414/magpie-cli-linux-amd64"
      sha256 "54d17976acc792c73c117585d1e824d7ac73c672ca3e9617c7cfd7ee49679952"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
