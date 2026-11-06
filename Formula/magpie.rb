class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3120/magpie-cli-darwin-arm64"
      sha256 "8c0e34e250b33f19af9bfc42fdd6ac20f2d8ea0780b6e9264415aa2e0181fd75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3120/magpie-cli-darwin-amd64"
      sha256 "2a6adae46c1d61c34b1a8531bcde5aee5f10b6bb1c3d5e82b5cfa6d02de13e20"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3120/magpie-cli-linux-arm64"
      sha256 "f9969889e61bb9def72f28247c5bdd8553c24861c82160822dada592c1e6d728"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3120/magpie-cli-linux-amd64"
      sha256 "0e2ca17b091aaf9d825af84266983daa81ca7eeca8efa995876f54d48f43eba5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
