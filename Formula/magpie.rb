class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3761/magpie-cli-darwin-arm64"
      sha256 "1258cdb21b4b5df643dcbd03cf0d6490b9a6f7232767cd2546fc785caec15bfa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3761/magpie-cli-darwin-amd64"
      sha256 "4712ef59fbe4440cce5c5c3f9c9169a2bfb676e678db9959910336abd950352b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3761/magpie-cli-linux-arm64"
      sha256 "2f6b85f13d53c12bc87ab583f9ded9ed3811ba0355ab8f21d46f44c5bcd9624b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3761/magpie-cli-linux-amd64"
      sha256 "a89b9416cde763bdea7bf3a9db20eb9452d274ee15d11ea452711c9ef00b040e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
