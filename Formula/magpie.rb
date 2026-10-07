class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1101/magpie-cli-darwin-arm64"
      sha256 "92a65abe6b0d832bb5a9f0a0e57f4cfe7d2819a2efc182e36efc66c33b112118"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1101/magpie-cli-darwin-amd64"
      sha256 "1f448e0686c51dc9cef348d6bb68ce38ce724cf4c6bcb342a4cb4fb4510daf9c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1101/magpie-cli-linux-arm64"
      sha256 "d879303af99cbe8ad0879ead0d3af132d636252140dbfe08258abcf7561239eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1101/magpie-cli-linux-amd64"
      sha256 "ae3fca2aac64e54b44d9514acfa3080e659202480901c66f6033501f1335875a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
