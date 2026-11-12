class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3894/magpie-cli-darwin-arm64"
      sha256 "cd648221fc06b31872911336bcec75a20da6d339fc73a74f8045edcf2fc1281f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3894/magpie-cli-darwin-amd64"
      sha256 "d671e2c55e9b7fff1fd4950db46f0c2e707303cbbdadac6cc68ad175bb4f9ecf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3894/magpie-cli-linux-arm64"
      sha256 "df585819e825a23ff5fbcd2351360952651775549526a91fcd9380eb27a2c5e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3894/magpie-cli-linux-amd64"
      sha256 "b32c2fa1ae7525ad2cfe42a353c85cc1813bbcea417483663ce261640e26b34d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
