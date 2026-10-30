class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2260/magpie-cli-darwin-arm64"
      sha256 "070bee91ea2f3ba5defdc71b5d825dbded804a2f4775886f91a93f46f6281adf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2260/magpie-cli-darwin-amd64"
      sha256 "5d6afc3c4230b35cb1c6c76afbcb6ab7c9d72429a3245be6ef5880491147f9be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2260/magpie-cli-linux-arm64"
      sha256 "73fb54bff3b34a9fe40ca6b9090f7fd4345eb41fb42c38cd1d22266c1226b9f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2260/magpie-cli-linux-amd64"
      sha256 "b73395171aafcbb7ef301a42244e191b1fa6b23fb5154f737e5926255a407185"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
