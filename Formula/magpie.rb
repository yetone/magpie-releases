class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4338/magpie-cli-darwin-arm64"
      sha256 "a2402d5a8c04ca539369e6f900e1d38bdd1a022700cd63ee6fad6e927b680fd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4338/magpie-cli-darwin-amd64"
      sha256 "59297818c555aece7e6046130daac6ce5ad174557c657f3987f3d9b6049dae3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4338/magpie-cli-linux-arm64"
      sha256 "57cc2da1f568a7d615f60b7a7c413a27525ab4f4e51f5c860562398aaad25d0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4338/magpie-cli-linux-amd64"
      sha256 "919f74b6fbc74fe8e8b53d9f22df5a71f2130c8ea891ae0d8c5678ee7e9f1968"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
