class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4545/magpie-cli-darwin-arm64"
      sha256 "3906a79cfb204db20f0dceee5cdb52a086d5ca88ca48ed70ab7f4358e9ae95d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4545/magpie-cli-darwin-amd64"
      sha256 "0ab37565c64952866db9eb484434ba96c3de6de04ea131d954b39f6ba950fa13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4545/magpie-cli-linux-arm64"
      sha256 "34df0e1082089a5e1e934a606f83a4d3117806a389d2e8932ec924075dd94536"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4545/magpie-cli-linux-amd64"
      sha256 "83f3ee1c732b95b87ea88968b4179f8bb3f75e98d3c7f813a3dc36c3e69c0f4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
