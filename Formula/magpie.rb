class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2291/magpie-cli-darwin-arm64"
      sha256 "2ea368daf2b6e39b4c57bd0b59267e9945416c3c435d68e87595b4f53f982f8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2291/magpie-cli-darwin-amd64"
      sha256 "5411d7b3f7fc8841d7e2f082fbe26e5eacc583ce1fd22c238f47f9acc6618dcf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2291/magpie-cli-linux-arm64"
      sha256 "32e61327e29ab6c94e0ef9e562dd79e760a1d5dbd93bea12af2190d92d095b2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2291/magpie-cli-linux-amd64"
      sha256 "12196433bce939d35536b1d1822758d92cf78a2413bcd83ad2e24480601eb0c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
