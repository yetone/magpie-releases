class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3755/magpie-cli-darwin-arm64"
      sha256 "a4b6c6d73e3bf6c4b8d111d8a10cb45d02435a1fdd1bbdc645cdb60c275f9bb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3755/magpie-cli-darwin-amd64"
      sha256 "6ca4044abe9d77cc000c18266e9ce4258d22a10b5e1fed8361159ffcf5600642"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3755/magpie-cli-linux-arm64"
      sha256 "b22f663773733540009debdff8a2ffbd9334f70a82f5d3dd4416e7eb6d9eb727"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3755/magpie-cli-linux-amd64"
      sha256 "419d98cc5bd2a02201d2e0e301c1464a918f00eddf9af76b400edbb80db5afed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
