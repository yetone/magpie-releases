class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4379/magpie-cli-darwin-arm64"
      sha256 "1c4cab4afbe54d5682c289b5857d232e45cecc0ec1cb29bd4cfac618fc99dda4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4379/magpie-cli-darwin-amd64"
      sha256 "7a75343915422bfddeeb69d21e0edd8756eeeb9e627b19d81c4f1e83a0bb6454"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4379/magpie-cli-linux-arm64"
      sha256 "402414b456bedbb75a88ea12ee0cfbddbd817b0eb056786837f7393976abb985"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4379/magpie-cli-linux-amd64"
      sha256 "bf4b2cd088367c0e17b9c94216700a61d10fd08f3045258d6cb016602f79cd33"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
