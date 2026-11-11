class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3796/magpie-cli-darwin-arm64"
      sha256 "7731dc3ec11d5eeac934828ad5821fc3b088a186df8e8f9d602cde3176ed8d14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3796/magpie-cli-darwin-amd64"
      sha256 "77b90f522f07ca8b94fb2c9e80283ca4b34f1258dfde0626500bacec6ac31ca7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3796/magpie-cli-linux-arm64"
      sha256 "00ac0d8d0796d8462296cfd0197da09309a532a2c12d7d85c126a16b713bd7b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3796/magpie-cli-linux-amd64"
      sha256 "d1fbf99422fc5da670c4c893ace8070954f84a096ebbeaa9d4b11f63293f6c8d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
