class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2219/magpie-cli-darwin-arm64"
      sha256 "4ae24f3964fc1c801abde606caccceb58a9e93d6b4742eaf60c8b90050ceb105"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2219/magpie-cli-darwin-amd64"
      sha256 "2966d3566976f0222c0e12f7f348f077572739ec98df6cd25b58bdaf14e3ccbf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2219/magpie-cli-linux-arm64"
      sha256 "9b55cbc68db21382f383931e633e015bc8ae7c008b0c63ed7ed64a88819b2fc6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2219/magpie-cli-linux-amd64"
      sha256 "ec1d0e4e3e1789b20cfc0955ff03940e13cc22f6c34ce25871c2528aaabcdc6e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
