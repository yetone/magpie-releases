class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2990/magpie-cli-darwin-arm64"
      sha256 "e3b5b6d5df604cb6a64c2b29d8354ea0633db6b99290f33752be20865918e453"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2990/magpie-cli-darwin-amd64"
      sha256 "89d835fd0401c702077fcf100fba120d70e0cd4fd9565c2117113ff288abd47c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2990/magpie-cli-linux-arm64"
      sha256 "0eee5797cf424fabf3c048f007b24f63d8b6e3e4681efb678e178334b011200f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2990/magpie-cli-linux-amd64"
      sha256 "335a5a6761c40bf0bc9777ac8557194c20238ce2e6f488b568fd4db2696e4ec0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
