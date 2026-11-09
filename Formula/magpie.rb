class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3365/magpie-cli-darwin-arm64"
      sha256 "dfc1389c172a411618d24e3542cc85184cbf1ad4ffb40b9a585c079be8856ba5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3365/magpie-cli-darwin-amd64"
      sha256 "482c01832391e5d8472d122868e645e59040b1f2e37329c65da2f57edffc6711"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3365/magpie-cli-linux-arm64"
      sha256 "e80aa75a3e3f0178ce982470374d69c1e7906342634395dbb1259aabc5b61307"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3365/magpie-cli-linux-amd64"
      sha256 "a7d3122b901e74e200eb2f5cf1dc1225342e8b9b728a03f5dc2ce6d7fc6f8ead"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
