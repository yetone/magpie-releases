class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1061/magpie-cli-darwin-arm64"
      sha256 "670d8c09df5684bc7d30809f691ee023026bbe0e18a151db96280f40931c3902"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1061/magpie-cli-darwin-amd64"
      sha256 "56be445c14a3e5da34b0e0937975dc47da1798aa8759138870cbd871a383c9df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1061/magpie-cli-linux-arm64"
      sha256 "05cda616756dfed3fd03e5e4b242a18316f06496a8e799fe6628b6b49213d033"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1061/magpie-cli-linux-amd64"
      sha256 "c72af219bd97a2bed2524d160c7beb128423c2e3cdf1f01fb8675a15cebd7836"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
