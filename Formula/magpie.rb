class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2903/magpie-cli-darwin-arm64"
      sha256 "8443f23e043fc6c859cbe53e310ba504056d56dc04fa34368f987dc55e9f949a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2903/magpie-cli-darwin-amd64"
      sha256 "6a3eab1daab594094cff075e15bed53aca09493b9686fd00086e01c3f84b0267"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2903/magpie-cli-linux-arm64"
      sha256 "ff7ada28b152455e898fc918061de8984f1652ccc0be7e0c7a5f6dba24052aba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2903/magpie-cli-linux-amd64"
      sha256 "15a641f4b5f3ea4e704028729e03bbba7cc141c73223587e6ce97e3268a59500"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
