class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4586/magpie-cli-darwin-arm64"
      sha256 "29ccc5dad33ab91ca2bef1e2c8a310e2e7ea253fc15bcb6bafe729d9aea1ce7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4586/magpie-cli-darwin-amd64"
      sha256 "d8bd46fa02c3a7f6f564a1357993803dff5a7407ff610849700a38b21e35f47c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4586/magpie-cli-linux-arm64"
      sha256 "40eb924c0b70a51302b1820fcc9e5022a9e13092fa3e8e3d0cdf92a2f5aacc67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4586/magpie-cli-linux-amd64"
      sha256 "41054bffd701e52164ee8ab32158c7821ba70f33b91201bc0c9f77da18464b3b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
