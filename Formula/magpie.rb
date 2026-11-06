class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3146/magpie-cli-darwin-arm64"
      sha256 "0fc83515f40b67a881e0c1e2e4a182e5344bad166857591eb89e47242e3dd3f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3146/magpie-cli-darwin-amd64"
      sha256 "c040977af71a0d4213a0b6c29405338c197583d01bb567dd90bdb159a8bcb406"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3146/magpie-cli-linux-arm64"
      sha256 "fbcd03f38eaa50ad6b883b256bf3a781d1a857279d9ab2f2efb5f268f5f18c63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3146/magpie-cli-linux-amd64"
      sha256 "b0c1d332b3097efedb25e9ba202c77c0c0955b7fdbbd96bef453589892c11a78"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
