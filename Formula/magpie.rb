class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4219/magpie-cli-darwin-arm64"
      sha256 "4f99abcfbc7984bdd7f207834476575f6e8c56c48ec5ddfb1f9c283a0810f446"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4219/magpie-cli-darwin-amd64"
      sha256 "54f6f255e77ae4633a4e09852051fa9c2499d39a7de01c67f35d38f413d8717c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4219/magpie-cli-linux-arm64"
      sha256 "0041c21233910105fd49cdb8e17c7c452b101cee7c2edd19465eb59174d06998"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4219/magpie-cli-linux-amd64"
      sha256 "ede443a4be418cb2f80fc33a3d5ff488faf7a0462ff0e3af085d8c881c69c4d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
