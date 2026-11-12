class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3946/magpie-cli-darwin-arm64"
      sha256 "4861a9c7c48893d4e5fdce6d28bdb397c9ee65e28977e6f65950f05bb131a936"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3946/magpie-cli-darwin-amd64"
      sha256 "5980306fb45d498778f596960983490940b1fa3d92c0d2375416a1ceb33aeaf7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3946/magpie-cli-linux-arm64"
      sha256 "012d8b97733b1615c42ec9f247231171f9ab66869bf5be170d39e044837dcd43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3946/magpie-cli-linux-amd64"
      sha256 "b5f0ef87d16ac85728ead5ee7950a92f6eef3198e344021d137008dccadcfa01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
