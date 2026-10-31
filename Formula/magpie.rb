class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2363/magpie-cli-darwin-arm64"
      sha256 "6ea9add6990cececb78a8b5d938d1f217d419c0e436b5d326fec74c76c70316a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2363/magpie-cli-darwin-amd64"
      sha256 "3de0ce9d229fe08c5a1ca00d07bc42a068af4331294b3d554fff741690f8927f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2363/magpie-cli-linux-arm64"
      sha256 "dfe40ff00f52b1c3c30572c3fbd31bf90bf1b812360196385735e58326e86699"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2363/magpie-cli-linux-amd64"
      sha256 "84e167a9ef65ac596c810b667e35290ec2ba2e601967bfa502862a310c31ec24"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
