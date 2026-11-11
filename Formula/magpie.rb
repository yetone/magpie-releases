class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3809/magpie-cli-darwin-arm64"
      sha256 "bc91735a5ea5010c24eb3770c7910504d4b2f1be2c7799dafc0bf03b65b7c42f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3809/magpie-cli-darwin-amd64"
      sha256 "ba829cf5c0e72cc1debc57c779b77515fbf066bfd7443dfcfb5fd329d8fc93f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3809/magpie-cli-linux-arm64"
      sha256 "c1dee05f9702cd546a8a3a10b9f54329623d138946576130b3d52cd0a5dccae6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3809/magpie-cli-linux-amd64"
      sha256 "0932cb63acf2439fcf1e02710bcba1ed981768bb6a2da7c5f373c0754f8f37b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
