class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1064/magpie-cli-darwin-arm64"
      sha256 "6680154575168247c36259af544739fd17474eafb02c1f339a61b09f4ddb7ad3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1064/magpie-cli-darwin-amd64"
      sha256 "0a5c7338fc4644781deb7b1ddfccb21fdc0ffbe65ee487da1bbd455bdd47c74d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1064/magpie-cli-linux-arm64"
      sha256 "c2e33047364e79e08af881d3822615d7b2a68754a53d564acc30d77388ea56ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1064/magpie-cli-linux-amd64"
      sha256 "a3caa9a5d6ad44314fe0216fcf918742a46099b5d76044e8e0003d3ab42599a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
