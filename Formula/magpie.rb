class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3830/magpie-cli-darwin-arm64"
      sha256 "56ddb37b1350eda25db541d0474cfbfd2e327a6f8a26e2455090a7a996866531"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3830/magpie-cli-darwin-amd64"
      sha256 "4e232cf7761ea93d69f7615aa7228f7e0ba1801a95e8df9352957165c3c8e627"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3830/magpie-cli-linux-arm64"
      sha256 "01a60300723d8fd8e425be4144ee4183e0779f76ff4167a93fc837c7fe195b90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3830/magpie-cli-linux-amd64"
      sha256 "94147b39a1d324c024da21dd81ab0ac4ded15f3ac54c9180aaaeb127e7159980"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
