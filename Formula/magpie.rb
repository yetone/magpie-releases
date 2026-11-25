class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4813/magpie-cli-darwin-arm64"
      sha256 "89f31681bb5c954227f51ec4457aaf0147085926f5a78635bda280e365617e0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4813/magpie-cli-darwin-amd64"
      sha256 "edda649dcdbc294128bc5f60b9236f720cd750543088360d2e235c861cf3ee54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4813/magpie-cli-linux-arm64"
      sha256 "d7299e4cf9745ca4f4a587046c707ae6bf478da5573c44b695fd7a91c75b55b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4813/magpie-cli-linux-amd64"
      sha256 "3317c7fe79bc8f9b07ce1039ea7d2623237f22422545e08070e619e2e4ebc2e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
