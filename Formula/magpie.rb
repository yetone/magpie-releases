class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2741/magpie-cli-darwin-arm64"
      sha256 "44b6c0f0362fd983d658a34ce058acabe53ad2e1080d9bec91b1164db949e7fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2741/magpie-cli-darwin-amd64"
      sha256 "f08c64e110eeb25011cc867fe86812c3075e99cf90b74a6a4e1718d76eabd55b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2741/magpie-cli-linux-arm64"
      sha256 "e69b902821258acd3341c4359401987790c534c3c1cd71ed4c759cbbd999a0d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2741/magpie-cli-linux-amd64"
      sha256 "19d49b85ba7eb885bc319c29300af67dd093e83ec6e2f945912bd78110199206"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
