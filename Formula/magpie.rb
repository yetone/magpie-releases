class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2005/magpie-cli-darwin-arm64"
      sha256 "357508e229d3363428fdf75d1b52ab8b733bc78fa69ffb139037d2357096f21d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2005/magpie-cli-darwin-amd64"
      sha256 "ae82675c69bb9f02913ecb043a9d90879444fbef7c1f9c0772c9e0b6482006bf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2005/magpie-cli-linux-arm64"
      sha256 "11a3943983c0945fd6680d65eddd0774dbacd503ca60c63cbe3692cd3bd3f694"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2005/magpie-cli-linux-amd64"
      sha256 "e84de896d527e40bcdc0ce5bde206c237daa5c34fb8c5f6e555c9457c7f0d7ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
