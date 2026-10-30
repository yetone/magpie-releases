class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2145/magpie-cli-darwin-arm64"
      sha256 "537f869c2bcec062c3a07c53e9060b709d0e9ea741519f6d19975329e78e1cfc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2145/magpie-cli-darwin-amd64"
      sha256 "190bedf4a0777d383a5007823af2f66f57099514eba672604bdba621209467b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2145/magpie-cli-linux-arm64"
      sha256 "35506b852273a03493fdf0035b61115f6b27d68a7ed8d72e153a78558912246e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2145/magpie-cli-linux-amd64"
      sha256 "048651ce65ee59a930b98c7a6dcf9b7d35f66811bfe0ba30f0b793a43b13acc5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
