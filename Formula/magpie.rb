class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3295/magpie-cli-darwin-arm64"
      sha256 "44e2b877fa031052a28b257ffe2cbb1df02f2e30cc72e584c2d3e6fa62089eea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3295/magpie-cli-darwin-amd64"
      sha256 "b5aa5b29893b33671b2e10623518b99ee7280d25f9b121814f5bb63560e87dba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3295/magpie-cli-linux-arm64"
      sha256 "bbbfca6b307a0783d9df9e2f7767fc14a80feec6a32c79e50f1b437cbe85679f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3295/magpie-cli-linux-amd64"
      sha256 "6a83cad6d2e98205ab2b210587fae5475d987e546dbe47b91c41812e5079ab27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
