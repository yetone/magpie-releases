class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4048/magpie-cli-darwin-arm64"
      sha256 "2bd27b9869317a7685a139cc0da253abfba0d1ef2952bdfa29b1c8d01458b7d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4048/magpie-cli-darwin-amd64"
      sha256 "fdb354ab708e9d238870af9b30bb692141776717715929e90255367d72f090ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4048/magpie-cli-linux-arm64"
      sha256 "9b04aeae147ffb12b5f83d6f67eac6b12a268f3782256b5604f497f9a875eaaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4048/magpie-cli-linux-amd64"
      sha256 "f6cde3a164a61e9b3c9259ccceda7c10c318f6a57ddef69e30046c50d98aada2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
