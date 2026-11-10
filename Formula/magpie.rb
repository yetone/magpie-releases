class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3584/magpie-cli-darwin-arm64"
      sha256 "c8aed134ec6fbc93da03381c4760b6a280eb0f6a901733aaba8a5b71224c6bfc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3584/magpie-cli-darwin-amd64"
      sha256 "86af464b55250dfcaacd8b7b42af5bfc1ae8cc210ffabee25f08ca1fa509fced"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3584/magpie-cli-linux-arm64"
      sha256 "faf27ae9904ade77d2e4f35846e1cd08dd62935c427896a2c000e693025f58dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3584/magpie-cli-linux-amd64"
      sha256 "4bce6eba59a4375a8453ca3fdb8d8e6e2b6b6d552435f9911d825750dbfebe73"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
