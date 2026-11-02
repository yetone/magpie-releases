class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2671/magpie-cli-darwin-arm64"
      sha256 "05ceafa47db343b0d2594fd13df6272f24071fd1d9aa318d94f009618d93f070"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2671/magpie-cli-darwin-amd64"
      sha256 "2bc6241129ec4c4e3ae370e6ea695a057c5b2fc0e945cc1c3e65c14982ab09ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2671/magpie-cli-linux-arm64"
      sha256 "9ab2a20ae3497dda72967ca8ae91792f16f2de19ba2aa37ae0608ddf9cf06b10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2671/magpie-cli-linux-amd64"
      sha256 "980ccb059325da4c962f7b12dc3840788b3aaabac163701f602538ac4ffd0935"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
