class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4111/magpie-cli-darwin-arm64"
      sha256 "98b592f91a01b00c81aae420db30fdf95b1780f7c08ce3a20079f960506e4e9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4111/magpie-cli-darwin-amd64"
      sha256 "4dc24b901ca95814ebfa9a0c015eccb14833b7db90fa40d7a97d22169c46f560"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4111/magpie-cli-linux-arm64"
      sha256 "f9eede1928c2b62d59008d5b71c8be8252351ea53d4084899137143142e77381"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4111/magpie-cli-linux-amd64"
      sha256 "ac26472b4a9135a101fe94bf7f137919ba41a55053a23530133cc02bee1ac755"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
