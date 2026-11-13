class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4003/magpie-cli-darwin-arm64"
      sha256 "700beef65aa47bcfc976700e81a2688c0522809ef5d8c605feecdf5d442b2594"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4003/magpie-cli-darwin-amd64"
      sha256 "8e9a41b6bbfc72148cdbedb4e2eae3ff80e5e0f68dbacc367b8a6d58034b053e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4003/magpie-cli-linux-arm64"
      sha256 "a7950ddaf795443ea760e67f3b3fc50b781866e86e99c199b794e5d24594c828"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4003/magpie-cli-linux-amd64"
      sha256 "b0c6decc98f220bf7020e52d14abc5963a0c404c500fb066156785355f68a395"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
