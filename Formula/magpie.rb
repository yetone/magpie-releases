class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4636/magpie-cli-darwin-arm64"
      sha256 "bff958bf45fd22eac0876c3e833980faeb8ae1f604defbce0ddcdcecf79e52ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4636/magpie-cli-darwin-amd64"
      sha256 "37ce26cdf0362594f0ea2b4d59aa516b9bfcb3e186c0e3a30d72013132eaaeb3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4636/magpie-cli-linux-arm64"
      sha256 "bf876fe1a7f8e0974b1db1f2a3683dd364bbd53d04db1899ef3cc1789070f35f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4636/magpie-cli-linux-amd64"
      sha256 "6231992e5260587e2549030df98a59e1b471d6ebd1551cbdb83a437ff430930b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
