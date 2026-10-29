class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2028/magpie-cli-darwin-arm64"
      sha256 "9154d351c6abbea552ea49dd6bb02a89aae8c7ecefaf54fc44ad8618b3c88c8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2028/magpie-cli-darwin-amd64"
      sha256 "447a59015a0d1ce957da50c8cb3b72899d67aa9377f8ca127e8654cdfa60d343"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2028/magpie-cli-linux-arm64"
      sha256 "4f95a0b6691ee9f0a2d6f4a62e753cd12da1a6d9269d6a6b77f9fb281646a14e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2028/magpie-cli-linux-amd64"
      sha256 "850e8ca5a776c773d6fcf7e5e2bfefe9102fa50216846a9e8de32b9965682041"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
