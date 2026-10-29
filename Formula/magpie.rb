class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2067/magpie-cli-darwin-arm64"
      sha256 "d698ac7f67d70bd680cb38a57ffa054e0f8f0c3f821eb7740bed6b70f08a4949"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2067/magpie-cli-darwin-amd64"
      sha256 "d2f5c3afbb2fea602736c5791635dc432e7987c3e97faf687c4270547abc7a42"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2067/magpie-cli-linux-arm64"
      sha256 "09b2b07c512de29c4e345df57d6070598ee08870912d78a817d16b335920befa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2067/magpie-cli-linux-amd64"
      sha256 "f4080e8a81d82c4e819e68936fbb7cf242c641c02bdeb8170b369b3a69c968bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
