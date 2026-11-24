class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4763/magpie-cli-darwin-arm64"
      sha256 "0813f7ba65d47e71af83964f539bff22fe01c4f1827c1cbaf21a93d56e72ea5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4763/magpie-cli-darwin-amd64"
      sha256 "4d28c88b0517fdcb2aa77650e3163b33d675e883a4c4de164f4573e0487a98be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4763/magpie-cli-linux-arm64"
      sha256 "d107315e24f42cabd529d9baf06af5bd7c0806ae9a158c69ab24f3c692477235"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4763/magpie-cli-linux-amd64"
      sha256 "033075dbcaa3f773da0f001363b74242a48acde1254f731ef80c26de2d213082"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
