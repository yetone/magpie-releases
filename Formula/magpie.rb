class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4946/magpie-cli-darwin-arm64"
      sha256 "4a5a53826bf6e519bc15a8d60b9090ce57aacfa4759ca6f95c508eb2356ff262"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4946/magpie-cli-darwin-amd64"
      sha256 "ec3c92f5447d45774fa4e2d1c49b634ad1adfd378521019a34cd962c69a46a03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4946/magpie-cli-linux-arm64"
      sha256 "570b3b292e17e78e8e41d3eb1a8ef646e62db373fc4743166995061ade6d3937"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4946/magpie-cli-linux-amd64"
      sha256 "931513b9a663d5644f03c1a8770b9073edd00d22549b223256f2bc41bba7114e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
