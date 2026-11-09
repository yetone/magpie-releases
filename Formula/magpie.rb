class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3465/magpie-cli-darwin-arm64"
      sha256 "12bdce3e83c982c0014f2b3cec208d9c5bd36fe5be5a5a85129cea3d8b22a889"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3465/magpie-cli-darwin-amd64"
      sha256 "870794f7445eb1432fd12bf45b477f113606f1667cf616c8861856d73f480448"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3465/magpie-cli-linux-arm64"
      sha256 "d3da398879fb438f69ac9a34b6cb5e7aa8373638ba68704513f30b426af36ec3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3465/magpie-cli-linux-amd64"
      sha256 "1528b549fe0f74af18ee833a672eeb55204faa2d74c6945a087c6fded149180f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
