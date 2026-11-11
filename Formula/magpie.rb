class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3800/magpie-cli-darwin-arm64"
      sha256 "04859f20c642da1600f052b5fe2dbf723c49b449afdab59c07b1889805b9090b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3800/magpie-cli-darwin-amd64"
      sha256 "1a3387f601b1aa4854fa5742541566b4c7e4fe2c4abdbb330b529d6f20c55e7d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3800/magpie-cli-linux-arm64"
      sha256 "622e1539eaeb064b71c75a30654a031ad2b1b858c3fb78e19a65a4e2b1ea66f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3800/magpie-cli-linux-amd64"
      sha256 "2c59cb69e27062872b34679e94dbcc080cf39b7dd9c790746be6b00af64f967d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
