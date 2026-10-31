class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2493/magpie-cli-darwin-arm64"
      sha256 "be03b15a64262ce240479bdc9f6c7cd5a7761fc235143dc67d826772f8bea2b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2493/magpie-cli-darwin-amd64"
      sha256 "9633de52d4d265356c33ee140f7e04e9ec0126cdbe49429188f5c2ea3ecd1056"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2493/magpie-cli-linux-arm64"
      sha256 "beba42cb43d4a5ae36d55dca3a989bb296f2371cea18340afde4317dc0de365d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2493/magpie-cli-linux-amd64"
      sha256 "81e9feb67e62fa343131122577037c32e4d924dcc2785d7374b8c9b4916d8741"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
