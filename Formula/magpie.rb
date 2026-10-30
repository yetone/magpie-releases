class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2270/magpie-cli-darwin-arm64"
      sha256 "429ced69d10b31dc997056ff747d74c045a2a5ff1edc6ac12750cadef0811779"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2270/magpie-cli-darwin-amd64"
      sha256 "298d21338122012e41c3cf8627a7223f6ee6d0013401be1874c3a93c88cc424c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2270/magpie-cli-linux-arm64"
      sha256 "8cce1eaf20d2df22a7be73a1209f3ce8eb5fd33f5a6aacf72b5f67d9d65d8cfe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2270/magpie-cli-linux-amd64"
      sha256 "d80f533a6034f5cc6b6a4b155ac4662b390a1bd15ebae0f10830af1844cca5d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
