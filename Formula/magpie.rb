class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3675/magpie-cli-darwin-arm64"
      sha256 "bb7e178f47cd5e9fe66b3cdaa043581ceecef1788094e5a829e33c28c753235a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3675/magpie-cli-darwin-amd64"
      sha256 "a7f9f76961cc3be6c156804edd2d4b5f37cf8eb61cf6a6bd1eb93db269e1c780"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3675/magpie-cli-linux-arm64"
      sha256 "0fe55bf60914d49d837c4fc903bb7e745fa9b51c85118f583e450577ffa2aabc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3675/magpie-cli-linux-amd64"
      sha256 "6b7e0e062ab37571f1a4a0b3a20c1967074daa6e82ebc2395a439f36b3ed69ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
