class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4627/magpie-cli-darwin-arm64"
      sha256 "4e5ecf9602abe9c51232e17371db8e90ba04b0a6001377a0ed47fc9eb7ae0df5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4627/magpie-cli-darwin-amd64"
      sha256 "7f0be1bae99730018ee7d5eb6ace2b58159d6471a60a0005f0933817e63b9998"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4627/magpie-cli-linux-arm64"
      sha256 "9f9d4a264aaeca2a9cb700c497be78edeeb01b37639ead109eb975ef23882587"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4627/magpie-cli-linux-amd64"
      sha256 "6786808a0fa3361e223a126f9243154adfd520ba7e66a46651acceb5ad95cbe0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
