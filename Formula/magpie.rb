class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2292/magpie-cli-darwin-arm64"
      sha256 "da052a1b381921f56930615d24361d0ba560ded99b777f1cfebe1af04a3e6dc6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2292/magpie-cli-darwin-amd64"
      sha256 "f5260157328cc036e7731742c8875e57002ef90f38039e34ca11fca3b002c320"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2292/magpie-cli-linux-arm64"
      sha256 "9aca9a9e643b531ff56171ff5d5ced9e457d72ad669265cb8aed6803e854f86f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2292/magpie-cli-linux-amd64"
      sha256 "f029fce9e5197037510e45055f8db93f7301abf100bc62f3784d8de7457ddd0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
