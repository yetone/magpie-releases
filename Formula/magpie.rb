class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2737/magpie-cli-darwin-arm64"
      sha256 "92f741a6fdad18635c5ac772ae78a6034c3d119194945feb75d72ee25bcfd678"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2737/magpie-cli-darwin-amd64"
      sha256 "4ef35a718c459727e5562155db5b0e2a9e5f3544b8cae3a830d2cad399627baa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2737/magpie-cli-linux-arm64"
      sha256 "7317497c25738613036eb14c42fa8b1d216a8b6207224dda2ea0604b750b317b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2737/magpie-cli-linux-amd64"
      sha256 "f3f687ca2bf8bf83560d3e159f28d8ac318a945a3af038145b76ce6431e98009"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
