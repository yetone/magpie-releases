class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2459/magpie-cli-darwin-arm64"
      sha256 "c996c986683c08eb3ebcce92e401e37b84687efc7b699ec419f738330d14f199"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2459/magpie-cli-darwin-amd64"
      sha256 "1dcf749db6d9c504325581f11646b5514ccefecb0f7c9c0d0f56e2d10f59a913"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2459/magpie-cli-linux-arm64"
      sha256 "8df3505d82e75ead147bb254d8cbae11de0df533b71704f21b9ead0295711eb0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2459/magpie-cli-linux-amd64"
      sha256 "28881bcfdfedf026653580634b5fe1b8bf25e0370af0a7440b8f4a296e6505ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
