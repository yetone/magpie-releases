class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4311/magpie-cli-darwin-arm64"
      sha256 "d9e84bf8a617e0a444b9bdcfbe2d9a3debef919c6c83dd706e678577baddbdb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4311/magpie-cli-darwin-amd64"
      sha256 "ddef69551bfb2c044470ec8443429d60d382635c3e23418b08fc07ec0813181c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4311/magpie-cli-linux-arm64"
      sha256 "1d28fe616ee2b5c005b61be8cf34f947fa752ad7bdca2507da7e16824750ad79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4311/magpie-cli-linux-amd64"
      sha256 "c5a9003dfbd0828bf6db228097deba034eedcba14765532aa343477e5dcef830"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
