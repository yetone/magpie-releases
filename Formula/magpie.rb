class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3653/magpie-cli-darwin-arm64"
      sha256 "94e699811bf07928bd65712b5859094a6cb740a288193d878cd2b3aba1dc7ec9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3653/magpie-cli-darwin-amd64"
      sha256 "a50b1423ef5c7d76672b4c04728dd1c156b7e8abe5316edab5a9277f0d61ef06"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3653/magpie-cli-linux-arm64"
      sha256 "9fd56df16b8d99ef0935cee26c6d6bc88540a6d24aab697122569e1b532b22ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3653/magpie-cli-linux-amd64"
      sha256 "2a06827739eef9e76224686ef92364388323c5acd6a6369f504ab0b47c3f2cde"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
