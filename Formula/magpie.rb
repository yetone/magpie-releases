class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3786/magpie-cli-darwin-arm64"
      sha256 "2f7b12accd1f486ac93fa9ec149f67c26f006435e7ef6e1559758633a56c25a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3786/magpie-cli-darwin-amd64"
      sha256 "9abd919ea5601db303329d25388fe8ebb0057ece8a82e5e2ba1faa610ca8e40f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3786/magpie-cli-linux-arm64"
      sha256 "8f7b08f0300a799ea83db5ab20e81fd394847b324cf7bf4b473805819bd3fe92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3786/magpie-cli-linux-amd64"
      sha256 "351a095c3d1d45655871951be48349d9688cf4806d711a087bc9dba8fa4c405b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
