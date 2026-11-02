class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2736/magpie-cli-darwin-arm64"
      sha256 "4ade76e6f3c70ee24e1d3a56667091c336373684a335d5923f9d8e77d364a8d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2736/magpie-cli-darwin-amd64"
      sha256 "9d2464113dfe4d3b45f1114282e20794aed067d5255b33d920e7c755726668ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2736/magpie-cli-linux-arm64"
      sha256 "91525c3991a40374ef008f63c5437317453cf956cc06cabf2b9ef3cb318b02e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2736/magpie-cli-linux-amd64"
      sha256 "5a03ca6b86fb41dea9b21dbecd03b9dc36782a9cea72400524ba61b9fdea6f7a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
