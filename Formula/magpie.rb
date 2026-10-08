class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1125/magpie-cli-darwin-arm64"
      sha256 "5e233ee67a686e76dbc4ef8fae38f1fdcca7e273f1590b3fac1faaede4fbaf55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1125/magpie-cli-darwin-amd64"
      sha256 "b94d7c7713404d7df68dc3c7c1696139901b2decd1d92ea9bf611396d6dd05e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1125/magpie-cli-linux-arm64"
      sha256 "b49b94d6faf35bd8862a61fd6269b42971826f97b891ee5f637169a46bc6c728"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1125/magpie-cli-linux-amd64"
      sha256 "d55c0cba146bcd3e9584a84cc5afb2d3ad1e382ac0073ab5660af7a0d367b35b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
