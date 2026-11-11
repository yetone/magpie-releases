class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3736/magpie-cli-darwin-arm64"
      sha256 "af3be3dcbf7b516f80c6177cd9f2bce88db3f8fd6a03b3adc621ffff60f565a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3736/magpie-cli-darwin-amd64"
      sha256 "d7ce073f450d934019986ba68eed463d0a66e98a4e1866d886a649841d02a934"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3736/magpie-cli-linux-arm64"
      sha256 "a69107a5ee6ecc437e047907272fcb3be01a356c7a6e10a7468ccbb0c17e6c4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3736/magpie-cli-linux-amd64"
      sha256 "d056440553e58b817a5197457e8b997d00f35413df9ad9d50dac9a2cf6926592"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
