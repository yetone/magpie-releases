class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2387/magpie-cli-darwin-arm64"
      sha256 "2f041fa84af0cd4c4ef03cfe3388a8f1c680dd6cf91487a38d611ac73436d1c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2387/magpie-cli-darwin-amd64"
      sha256 "60dbf69911782903ebcbd219b4e8c252c714ac8484dec209d9682f258f19479e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2387/magpie-cli-linux-arm64"
      sha256 "49776a7b1c8277e14a4e7d1ec2528168b996c6ffc4c5329aaf807811b74a0df6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2387/magpie-cli-linux-amd64"
      sha256 "358a6b75212d205a3456d5ede18a24578c27f60fc9df9ce94822261e6fd3e8c1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
