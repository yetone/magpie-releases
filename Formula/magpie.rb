class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4453/magpie-cli-darwin-arm64"
      sha256 "e23644bb4c4e40a1695fc209e36bc4f5aad4fc66d06a245ab62e536a9a41d695"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4453/magpie-cli-darwin-amd64"
      sha256 "f1359e5d829842d9685c4eb39c1fb760da42635f76f5a973d2a01b38e99109ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4453/magpie-cli-linux-arm64"
      sha256 "8c706d9fc005b2196faa01d8bddd7b033b4b0cb75cb4fbeca46654b576027403"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4453/magpie-cli-linux-amd64"
      sha256 "b9ce6c4942b49fe2fef8c189270e8a0b25807dbb82a9f0e236f1d46898bda725"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
