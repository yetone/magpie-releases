class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1951/magpie-cli-darwin-arm64"
      sha256 "86ff8cd222a57b33a998efe5412ead9d472fdab18c3c2f553dcc72ff5a29af64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1951/magpie-cli-darwin-amd64"
      sha256 "d7b574d7cff71060bc68aa9e6d67a896b8bf39dbc8369056fb82882facab0a36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1951/magpie-cli-linux-arm64"
      sha256 "215476e06d41e451eea398a7509d9e54d2376a980230c92b59e568706561aeb1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1951/magpie-cli-linux-amd64"
      sha256 "f5d412f8f1896fd890b882e62155840e2322d45400ba3dd6134890f3809dafbb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
