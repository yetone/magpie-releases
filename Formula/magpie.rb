class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3359/magpie-cli-darwin-arm64"
      sha256 "bd18c13a5e9cdb44c93d4df9e2ba0195adeeae32150d0ca4ae6f294898133dfa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3359/magpie-cli-darwin-amd64"
      sha256 "8bbee95aeada0dc5b86afbca37ebe6629258b421645ea3a1aa5406c62210a9d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3359/magpie-cli-linux-arm64"
      sha256 "ef846ff55c261407f8eca158ad4772c5c4835b95b9454518289168f2c91351c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3359/magpie-cli-linux-amd64"
      sha256 "2d04b797cb997c0134e7b84fbbaa4f0b0789152a6288f6424072d84ca39f1870"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
