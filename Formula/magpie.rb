class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2212/magpie-cli-darwin-arm64"
      sha256 "e0317eafe7615c425e6651412c6eb12917a4f915309d3b22c5ca78f60dba7ecd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2212/magpie-cli-darwin-amd64"
      sha256 "a407cda7c5d13710b64aaf30cc9cbe06a90b96262aabf4c1de25978cff6a7c77"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2212/magpie-cli-linux-arm64"
      sha256 "775cd2754473494420ef8f0def09fbcc241dbf74f70f76d8391adaff37ea9c39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2212/magpie-cli-linux-amd64"
      sha256 "dd0beac50d22580ab5cc06164b201c4d957d12522e762f19a16639cec091ba06"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
