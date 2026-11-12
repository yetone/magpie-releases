class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3859/magpie-cli-darwin-arm64"
      sha256 "5a5411015446232dcc82424195484a8a21b240eaa2175f5eed94c0313e97d702"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3859/magpie-cli-darwin-amd64"
      sha256 "5b757b8a7fea869f4cbf12cf1e969052fbed919986eac2a68a6db6abfc30c221"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3859/magpie-cli-linux-arm64"
      sha256 "49403132231b3a566f34b7610ff7e4b836fe68e93ae28547f8a8f17f6b1a450a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3859/magpie-cli-linux-amd64"
      sha256 "672f49e12edf1b797dd751fba599e739952eefb237620f7eb7793c394d61f07b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
