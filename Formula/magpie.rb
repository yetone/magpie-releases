class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3860/magpie-cli-darwin-arm64"
      sha256 "a26aa4655ea3718d6eaa745c21d161593a1da5d562eb32fd79133992106b2e00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3860/magpie-cli-darwin-amd64"
      sha256 "843beff785ba1103aab0cc5f3b085673d205a30edd18f130e9a480eb3ad434e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3860/magpie-cli-linux-arm64"
      sha256 "d0e73f21bc5b434943a39a5bcb52523f870c196b1787222ac4f89468832b31c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3860/magpie-cli-linux-amd64"
      sha256 "6318be531787fef33fd5e76870d298e256d749fe767ebad5da9e42c9b479ec20"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
