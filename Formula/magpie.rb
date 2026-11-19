class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4571/magpie-cli-darwin-arm64"
      sha256 "579db71e737cb6b61960452a08da81e2cfd3da4e6ca11db3a7c8ec7d7830a1d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4571/magpie-cli-darwin-amd64"
      sha256 "ac9af58811733dab04ab05b0c2190de0fef0175caf7fb9a5efb8af1f7dc0de35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4571/magpie-cli-linux-arm64"
      sha256 "e26c7e0435156581389ea81678570807368a2221182a2d6c9ce1c3d907086218"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4571/magpie-cli-linux-amd64"
      sha256 "7ceec79f6b87313dd809ca4719e019db0a4af377b9f5f52e098369f3f50220fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
